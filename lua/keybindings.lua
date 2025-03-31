-- "n" 代表在普通模式下生效
-- "i" 代表在插入模式下生效
-- <CR> 回车键
-- <leader>h 空格+h
-- <C-a> Ctrl+a
-- <A-a> Alt+a

-- leader键设置
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 多窗口操作
-- 创建直分割窗口
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {
    noremap = true,
    silent = true
})
-- 创建水平分割窗口
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {
    noremap = true,
    silent = true
})
-- 关闭当前窗口
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {
    noremap = true,
    silent = true
})
-- 关闭其他窗口
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {
    noremap = true,
    silent = true
})

-- 多窗口跳转
-- 跳转到左侧垂直窗口
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {
    noremap = true,
    silent = true
})
-- 跳转到右侧垂直窗口
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {
    noremap = true,
    silent = true
})
-- 跳转到下方水平窗口
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {
    noremap = true,
    silent = true
})
-- 跳转到上方水平窗口
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {
    noremap = true,
    silent = true
})

-- 窗口切换
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>w", {
    noremap = true,
    silent = true                                                                                              
})

-- 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {
    noremap = true,
    silent = true
})
-- 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {
    noremap = true,
    silent = true
})
-- 删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", {
    noremap = true,
    silent = true
})
-- 快速打开vimrc文件
vim.api.nvim_set_keymap("n", "<leader>ee", ":vs $MYVIMRC<CR>", {
    noremap = true,
    silent = true
})

-- 常用快捷键
vim.api.nvim_set_keymap("n", "q", ":q<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "qq", ":q!<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "Q", ":qa!<CR>", {
    noremap = true,
    silent = true
})

-- 打开/关闭 NvimTree
vim.api.nvim_set_keymap("n", "<A-m>", ":NvimTreeToggle<CR>", {
	noremap = true,
	silent = true
})


-- 标签操作
-- 快速在buffer间跳转
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<leader>bg", ":BufferLinePick", {
    noremap = true,
    silent = true
})

-- 上一个/下一个标签跳转
vim.api.nvim_set_keymap("n", "gt", ":BufferLineCycleNext<CR>", {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "gT", ":BufferLineCyclePrev<CR>", {
    noremap = true,
    silent = true
})

-- 关闭当前标签
vim.api.nvim_set_keymap("n", "<leader>bc", ":bdelete %<CR>", {
    noremap = true,
    silent = true
})

-- 关闭其他标签
vim.api.nvim_set_keymap("n", "<leader>bo", ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>", {
    noremap = true,
    silent = true
})


