return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup({
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })

    vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
    vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>')
  end
}
