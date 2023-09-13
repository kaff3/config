	-- This file can be loaded by calling `lua require('plugins')` from your init.vim

	-- Only required if you have packer configured as `opt`
	vim.cmd [[packadd packer.nvim]]

	return require('packer').startup(function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.1',
			-- or                            , branch = '0.1.x',
			requires = { {'nvim-lua/plenary.nvim'} }
		}

		use('sainnhe/gruvbox-material')

        use('christoomey/vim-tmux-navigator')

		use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

		use('theprimeagen/harpoon')

		use('mbbill/undotree')

        -- tree
        use {
            'nvim-tree/nvim-tree.lua',
            'nvim-tree/nvim-web-devicons'
        }

        use ('nvim-lualine/lualine.nvim')

		use('tpope/vim-fugitive')

        --completion
        use('hrsh7th/nvim-cmp')
        use('hrsh7th/cmp-nvim-lsp')
        use('L3MON4D3/LuaSnip')
        use('saadparwaiz1/cmp_luasnip')
        use('rafamadriz/friendly-snippets')
        use('glepnir/lspsaga.nvim')

        -- lsp
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        }

        -- rust
        use {
            "simrat39/rust-tools.nvim",
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui"
        }

        use {
            "tversteeg/registers.nvim",
            config = function()
                require("registers").setup()
            end,
        }

        use 'tpope/vim-commentary'

        use 'tpope/vim-surround'

        use 'machakann/vim-highlightedyank'

        use {"shortcuts/no-neck-pain.nvim", tag = "*" }
end)
