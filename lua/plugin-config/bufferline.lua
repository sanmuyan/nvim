require("bufferline").setup {
    options = {
        mode = "buffers",
        numbers = "ordinal",
        show_close_icon = false,
        buffer_close_icon = '',
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
