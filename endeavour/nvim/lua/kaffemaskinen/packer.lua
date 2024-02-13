	-- This file can be loaded by calling `lua require('plugins')` from your init.vim

	-- Only required if you have packer configured as `opt`
	vim.cmd [[packadd packer.nvim]]

	return require('packer').startup(function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.3',
			-- or                            , branch = '0.1.x',
			requires = { {'nvim-lua/plenary.nvim'} }
		}

    -- experience essentials
		use('sainnhe/gruvbox-material')
    use('christoomey/vim-tmux-navigator')
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'machakann/vim-highlightedyank'
    use {"shortcuts/no-neck-pain.nvim", tag = "*" }
    use {
      "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- treesitter
		use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use({
      "nvim-treesitter/nvim-treesitter-textobjects",
      after = "nvim-treesitter",
      requires = "nvim-treesitter/nvim-treesitter",
    })

    -- workflow
		use('theprimeagen/harpoon')
		use('mbbill/undotree')
    use {
      'nvim-tree/nvim-tree.lua',
      'nvim-tree/nvim-web-devicons'
    }
    use {
        "tversteeg/registers.nvim",
        config = function()
            require("registers").setup()
        end,
    }
		use('tpope/vim-fugitive')
    -- use ('nvim-lualine/lualine.nvim')

    --completion
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')
    -- use ({
    --     'nvimdev/lspsaga.nvim',
    --     after = 'nvim-lspconfig',
    -- })

    -- lsp
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'BeneCollyridam/futhark-vim'
    use 'kaff3/futhark-gpu-ir-vim'
    -- rust
    use {
        "simrat39/rust-tools.nvim",
        "mfussenegger/nvim-dap",
        "rcarriga/nvim-dap-ui"
    }

end)
