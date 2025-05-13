local notify = require("plugin-config/notify")
local _M = {}

function _M.get_config_path()
    return vim.fn.stdpath("config")
end

function _M.get_sysname()
    return vim.loop.os_uname().sysname
end

function _M.is_pwsh()
    return vim.fn.executable("pwsh")
end

function _M.is_bash()
    return vim.fn.executable("bash")
end

function _M.os_scripts(scripts_file)
    local os = _M.get_sysname()
    if os == "Windows_NT" then
        if (_M.is_pwsh()) then
            if not string.find(scripts_file, ".ps1", 1, true) then
                scripts_file = scripts_file .. ".ps1"
            end
            return vim.fn.system("pwsh " .. scripts_file)
        end
    else
        if (_M.is_bash()) then
            if not string.find(scripts_file, ".sh", 1, true) then
                scripts_file = scripts_file .. ".sh"
            end
            return vim.fn.system("bash " .. scripts_file)
        end
    end
end

function _M.os_command(command)
    local os = _M.get_sysname()
    if os == "Windows_NT" then
        if (_M.is_pwsh()) then
            return vim.fn.system("pwsh -c" .. scripts_file)
        end
    else
        if (_M.is_bash()) then
            return vim.fn.system("bash -c" .. command)
        end
    end
end

function _M.config_upload()
    vim.cmd("cd " .. _M.get_config_path())
    local result = vim.fn.system("git add . && git commit -m  dev && git push")
    notify.info(result)
end

function _M.config_download()
    vim.cmd("cd " .. _M.get_config_path())
    local is_reset = vim.fn.input("Is reset local changes? (Y/N): ")
    vim.cmd("redraw")
    print("")
    if is_reset ~= "y" and is_reset ~= "Y" then
        return
    end
    local result = vim.fn.system("git reset --hard && git pull")
    notify.info(result)
    if string.find(result, "Already", 1, true) then
        return
    end
    _M.config_init()
end

function _M.config_init()
    local config_path = _M.get_config_path()
    local result = _M.os_scripts(config_path .. "/scripts/init")
    notify.info("PackerSync execute completed\n" .. result)
end

return _M
