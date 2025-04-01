return require('packer').startup(function(use)
    -- 插件管理
    use {'wbthomason/packer.nvim'}

    -- AI 补全
    use {'Exafunction/codeium.vim'}

    -- 标签管理
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 文件树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 代码补全引擎
    use {'hrsh7th/nvim-cmp'}

    -- 代码补全源
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/cmp-vsnip'}

    -- 代码片段补全引擎	
    use {'hrsh7th/vim-vsnip'}

    -- 代码片段补全来源
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
