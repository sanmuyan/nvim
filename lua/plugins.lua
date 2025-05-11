return require('packer').startup(function(use)
    -- 插件管理
    use {'wbthomason/packer.nvim'}

    -- AI 补全
    use {
        'Exafunction/windsurf.nvim',
        requires = {"nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp"}
    }

    -- 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- 标签管理
    use {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- 文件树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- 代码补全引擎
    use {'hrsh7th/nvim-cmp'}

    -- 代码补全源
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}

    -- 代码片段补全引擎	
    -- use {'hrsh7th/vim-vsnip'}
    -- use {'hrsh7th/cmp-vsnip'}
    use {'L3MON4D3/LuaSnip'}
    use {'saadparwaiz1/cmp_luasnip'}

    -- 常见代码片段
    use {'rafamadriz/friendly-snippets'}

    -- 代码补全 UI 增强
    use {'onsails/lspkind-nvim'}

    -- vscode 主题
    use {'Mofiqul/vscode.nvim'}

    -- 快捷键提示
    use {'folke/which-key.nvim'}

    -- 终端管理
    use {'akinsho/toggleterm.nvim'}

end)
