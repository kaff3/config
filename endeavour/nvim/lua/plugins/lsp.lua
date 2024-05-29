return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup {
          capabilities = capabilities
      }

      lspconfig.csharp_ls.setup {
          capabilities = capabilities
      }

      lspconfig.hls.setup {
          capabilities = capabilities
      }

      lspconfig.html.setup {
          capabilities = capabilities
      }

      lspconfig.pylsp.setup {
          capabilities = capabilities
      }

      lspconfig.gopls.setup {
          capabilities = capabilities
      }

      lspconfig.clangd.setup {
          capabilities = capabilities,
          init_options = {
              fallbackFlags = {'--std=c++20'}
          },
      }

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition(); vim.cmd("norm zz") end, opts)
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration(); vim.cmd("norm zz") end, opts)
        vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>pt", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set('n', '<leader>gr', function() require('telescope.builtin').lsp_references( { show_line = false }) end, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>ge", function() vim.diagnostic.open_float(0, { scope = "line"}) end, opts)
        vim.keymap.set("n", "<leader>ne", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "<leader>pe", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end,
  },
}
-- return {
--   "williamboman/mason.nvim",
--   "williamboman/mason-lspconfig.nvim",
--   "neovim/nvim-lspconfig",
--   config = function()
--     require("mason").setup()
--     require("mason-lspconfig").setup({
--         ensure_installed = { "lua_ls", "rust_analyzer", "hls", "html", "csharp_ls", "pylsp", "clangd", "gopls"}
--     })

--     local on_attach = function(_, bufnr)
--         local opts = {buffer = bufnr, remap = false}

--         vim.keymap.set("n", "gd", function() vim.lsp.buf.definition(); vim.cmd("norm zz") end, opts)
--         vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration(); vim.cmd("norm zz") end, opts)
--         vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
--         vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, opts)
--         vim.keymap.set("n", "<leader>pt", function() vim.lsp.buf.workspace_symbol() end, opts)
--         vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--         vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--         vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--         vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
--         vim.keymap.set('n', '<leader>gr', function() require('telescope.builtin').lsp_references( { show_line = false }) end, { noremap = true, silent = true })
--         vim.keymap.set("n", "<leader>ge", function() vim.diagnostic.open_float(0, { scope = "line"}) end, opts)
--         vim.keymap.set("n", "<leader>ne", function() vim.diagnostic.goto_next() end, opts)
--         vim.keymap.set("n", "<leader>pe", function() vim.diagnostic.goto_prev() end, opts)
--         vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--         vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
--     end

--     local capabilities = require('cmp_nvim_lsp').default_capabilities()

--     require("lspconfig").lua_ls.setup {
--         on_attach = on_attach,
--         capabilities = capabilities
--     }

--     require("lspconfig").csharp_ls.setup {
--         on_attach = on_attach,
--         capabilities = capabilities
--     }

--     require("lspconfig").hls.setup {
--         on_attach = on_attach,
--         capabilities = capabilities
--     }

--     require("lspconfig").html.setup {
--         on_attach = on_attach,
--         capabilities = capabilities
--     }

--     require("lspconfig").pylsp.setup {
--         on_attach = on_attach,
--         capabilities = capabilities
--     }

--     require("lspconfig").gopls.setup {
--         on_attach = on_attach,
--         capabilities = capabilities
--     }

--     require("lspconfig").clangd.setup {
--         on_attach = on_attach,
--         capabilities = capabilities,
--         init_options = {
--             fallbackFlags = {'--std=c++20'}
--         },
--     }
--   end
-- }
