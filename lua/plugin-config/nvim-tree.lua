-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 20
    },
    renderer = {
        group_empty = true
    },
    filters = {
        dotfiles = true
    }
})


local function open_nvim_tree(data)

    -- buffer is a real file on the disk
    local real_file = vim.fn.filereadable(data.file) == 1

    -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    -- only files please
    if not real_file and not no_name then
        return
    end

    -- open the tree but don't focus it
    require("nvim-tree.api").tree.toggle({
        focus = false
    })
end



-- vim.api.nvim_create_autocmd({"VimEnter"}, {
--    callback = open_nvim_tree
--})
