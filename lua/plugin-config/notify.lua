local log_level_map = {
    trace = vim.log.levels.TRACE,
    debug = vim.log.levels.DEBUG,
    info = vim.log.levels.INFO,
    warn = vim.log.levels.WARN,
    error = vim.log.levels.ERROR
}

local log_level_env = vim.fn.getenv("VIM_LOG_LEVEL")

if not log_level_map[log_level_env] then
    log_level_env = "info"
end

local log_level = log_level_map[log_level_env]

local notify = require("notify")
notify.setup({
    level = log_level,
    background_colour = "#000000"
})

vim.notify = notify

-- local original_notify = vim.notify
-- vim.notify = function(msg, level, opts)
--     if level >= log_level then
--         original_notify(msg, level, opts)
--     end
-- end

local _M = {}

local log_title = "NVIM"

local function notify_at_level(level)
    return function(message, opts)
        if opts then
            vim.notify(message, level, opts)
        else
            vim.notify(message, level, {
                title = log_title,
                timeout = 5000
            })
        end
    end
end

_M.trace = notify_at_level(vim.log.levels.TRACE)
_M.debug = notify_at_level(vim.log.levels.DEBUG)
_M.info = notify_at_level(vim.log.levels.INFO)
_M.warn = notify_at_level(vim.log.levels.WARN)
_M.error = notify_at_level(vim.log.levels.ERROR)

local function log()
    return require("plenary.log").new({
        plugin = log_title,
        level = log_level_env,
        use_console = true
    })
end

return _M
