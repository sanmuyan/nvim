-- 基本配置
require("basic")

-- 快捷键映射
require("keybindings")

-- 命令配置
require("commands")

if os.getenv("NVIM_NO_PLUGINS") == "1" then
    return
end

-- 插件配置
local ok, _ = pcall(require, "packer")
if not ok then
    vim.notify("Packer not installed, try installing it...", vim.log.levels.WARN)
    vim.cmd("ConfigInit")
    vim.cmd("q")
    return
end
require("plugins")
if vim.g.no_plugins_config == 1 then
    return
end

-- 日志配置
require("plugin-config/notify")

-- 主题配置
require("plugin-config/vscode")

-- 标签配置
require("plugin-config/bufferline")

-- 状态栏配置
require("plugin-config/lualine")

-- 主线程空闲时执行
vim.schedule(function()
    -- Packer/config 修改后都需要编译才能生效
    vim.cmd("PackerCompile")
    
    -- 文件树配置
    require("plugin-config/nvim-tree")

    -- 终端配置
    require("plugin-config/toggleterm")

    -- 快捷键提示配置
    require("plugin-config/which-key")

    -- 自动补全配置
    require("plugin-config/cmp")

    -- AI 编码配置
    require("plugin-config/codeium")
end)

