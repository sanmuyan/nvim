-- 基本配置
require("basic")

-- 快捷键映射
require('keybindings')

-- 插件配置
require("plugins")

-- tab标签配置
require("plugin-config/bufferline")

-- 文件树配置
require("plugin-config/nvim-tree")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 快捷键提示
require("plugin-config/which-key")

-- 自动补全
require("plugin-config/cmp")

-- 主题配置
require("plugin-config/vscode")
vim.cmd [[colorscheme vscode]]

-- 终端配置
require("plugin-config/toggleterm")
