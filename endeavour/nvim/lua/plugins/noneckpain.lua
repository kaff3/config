return {
  "shortcuts/no-neck-pain.nvim", 
  version = "*",
  config = function()
    vim.keymap.set("n", "<leader>nnp", ":NoNeckPain<CR>")
  end
}
