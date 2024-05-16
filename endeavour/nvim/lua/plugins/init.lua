return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    -- or                            , branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- experience essentials
  'sainnhe/gruvbox-material',
  'christoomey/vim-tmux-navigator',
  'tpope/vim-commentary',
  'tpope/vim-surround',
  'machakann/vim-highlightedyank',
  {"shortcuts/no-neck-pain.nvim", version = "*" },
  {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  },

  -- treesitter
  {'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    }
  },

  -- workflow
  'theprimeagen/harpoon',
  'mbbill/undotree',
  {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons'
  },
  {
      "tversteeg/registers.nvim",
      config = function()
          require("registers").setup()
      end,
  },
  'tpope/vim-fugitive',

  --completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  -- lsp
  {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  },
  'BeneCollyridam/futhark-vim',
  'kaff3/futhark-gpu-ir-vim',

  -- rust
  {
      "nvim-neotest/nvim-nio",
      "simrat39/rust-tools.nvim",
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
  },

}
