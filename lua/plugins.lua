return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'Exafunction/codeium.vim'}
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- nvim-cmp
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'} 
    -- vsnip
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}
    -- lspkind
    use {'onsails/lspkind-nvim'}

    use {'Mofiqul/vscode.nvim'}

    use {'folke/which-key.nvim'}
	use {"akinsho/toggleterm.nvim"}

end)
