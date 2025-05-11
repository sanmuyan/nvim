require("codeium").setup({
    enable_cmp_source = false,

    virtual_text = {
        enabled = true
    }
})

require('codeium.virtual_text').cycle_or_complete()