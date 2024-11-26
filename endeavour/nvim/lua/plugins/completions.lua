return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      local cmp_select = {behavior = cmp.SelectBehavior.Select}
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
       mapping = cmp.mapping.preset.insert({
           ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
           ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
           ['<C-o>'] = cmp.mapping.confirm({ select = true }),
           ['<C-y>'] = cmp.mapping.complete(),
           ['<C-e>'] = cmp.mapping.abort(),
       }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
