local notify = require("plugin-config/notify")
local _M = {}

function _M.get_config_path()
    return vim.fn.stdpath("config")
end

function _M.get_os_name()
    local os_name = vim.loop.os_uname().sysname
    if os_name == "Windows_NT" then
        return "windows"
    end
    if os_name == "Linux" then
        return "linux"
    end
    if os_name == "Darwin" then
        return "macos"
    end
    return os_name
end

function _M.is_pwsh()
    return vim.fn.executable("pwsh")
end

function _M.is_bash()
    return vim.fn.executable("bash")
end

function _M.shell_init()
    if _M.get_os_name() == "windows" then
        vim.opt.shellxquote = ""
        vim.opt.shellcmdflag = "-NoLogo -NoProfile -Command"
        if _M.is_pwsh() then
            vim.opt.shell = "pwsh"
        else
            vim.opt.shell = "powershell"
        end
    else
        if _M.is_bash() then
            vim.opt.shellcmdflag = "-c"
            vim.opt.shell = "bash"
        end
    end
end

_M.shell_init()

function _M.os_scripts(scripts_file)
    local ok, result
    local os_name = _M.get_os_name()
    if os_name == "windows" then
        if not string.find(scripts_file, ".ps1", 1, true) then
            scripts_file = scripts_file .. ".ps1"
        end
        result = vim.fn.system(scripts_file)
        ok = vim.v.shell_error == 0
    else
        if not string.find(scripts_file, ".sh", 1, true) then
            scripts_file = scripts_file .. ".sh"
        end
        result = vim.fn.system(scripts_file)
        ok = vim.v.shell_error == 0
    end
    return ok, result
end

function _M.os_command(command)
    local ok, result
    result = vim.fn.system(command)
    ok = vim.v.shell_error == 0
    return ok, result
end

function _M.shell_failed_notify(msg)
    notify.warn("Shell failed:\n" .. msg)
end

function _M.config_upload()
    vim.cmd("cd " .. _M.get_config_path())
    local ok, result = _M.os_command("git status --porcelain")
    if not ok then
        _M.shell_failed_notify(result)
        return
    end
    if string.len(result) > 0 then
        local ok, result = _M.os_command("git add . && git commit -m dev && git push")
        if not ok then
            _M.shell_failed_notify(result)
            return
        end
        notify.info(result)
    else
        notify.info("No changes to commit")
    end
end

function _M.config_download()
    local config_path = _M.get_config_path()
    vim.cmd("cd " .. config_path)
    local ok, result = _M.os_command("git status --porcelain")
    if not ok then
        _M.shell_failed_notify(result)
        return
    end
    if string.len(result) > 0 then
        notify.warn("Local changes:\n" .. result)
        local is_reset = vim.fn.input("Is reset local changes? (Y/N): ")
        vim.cmd("redraw")
        print("")
        if is_reset ~= "y" and is_reset ~= "Y" then
            return
        end
        local ok, result = _M.os_command("git reset --hard")
        if not ok then
            _M.shell_failed_notify(result)
            return
        end
    end
    local plugins_config = _M.get_plugins_config()
    local ok, result = _M.os_command("git pull")
    if not ok then
        _M.shell_failed_notify(result)
        return
    end
    notify.info(result)
    if string.find(result, "plugins.lua", 1, true) then
        vim.defer_fn(function()
            _M.config_init()
        end, 1000)
    end
end

function _M.config_init()
    local config_path = _M.get_config_path()
    local ok, result = _M.os_scripts(config_path .. "/scripts/init")
    if not ok then
        _M.shell_failed_notify(result)
        return
    end
    notify.info(result)
end

return _M
