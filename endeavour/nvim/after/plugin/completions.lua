local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
   preselect = 'item',
   completion = {
       completeopt = 'menu,menuone,noinsert'
   },
   mapping = cmp.mapping.preset.insert({
       ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
       ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
       ['<C-o>'] = cmp.mapping.confirm({ select = true }),
       ['<C-y>'] = cmp.mapping.complete(),
       ['<C-e>'] = cmp.mapping.abort(),
   }),
   snippet = {
       expand = function(args)
           require('luasnip').lsp_expand(args.body)
       end,
   },
   sources = cmp.config.sources({
       { name = 'nvim_lsp' },
       { name = 'luasnip' },
   }, {
       { name = 'buffer' },
   }),
})
