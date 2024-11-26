return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { { 'nvim-lua/plenary.nvim',
                     'BurntSushi/ripgrep' } },
  config = function()
    local builtin = require('telescope.builtin')
    local actions = require('telescope.actions')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
    vim.keymap.set('n', '<leader>fp', builtin.oldfiles, { desc = "Find previous files" })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Find git files" })
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Find string" })
    vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = "Find references cursor" })
    vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = "Find treesitter" })

    require("telescope").setup({
      defaults = {
        path_display = { "smart "},
        mappings = {
          i = {
            ["<C-k"] = actions.move_selection_previous,
            ["<C-j"] = actions.move_selection_next,
            ["<C-q"] = actions.send_selected_to_qflist + actions.open_qflist,
          }
        }
      }
    })
  end
}
