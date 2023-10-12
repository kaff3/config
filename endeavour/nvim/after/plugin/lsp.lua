require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "hls", "html", "csharp_ls"}
})

local on_attach = function(_, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition(); vim.cmd("norm zz") end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration(); vim.cmd("norm zz") end, opts)
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>gr', function() require('telescope.builtin').lsp_references( { show_line = false }) end, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ge", function() vim.diagnostic.open_float(0, { scope = "line"}) end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<leader>bt', function() require('telescope.builtin').lsp_document_symbols() end, opts)
    vim.keymap.set('n', '<leader>pt', function() require('telescope.builtin').lsp_workspace_symbols() end, opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").csharp_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").hls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").html.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
