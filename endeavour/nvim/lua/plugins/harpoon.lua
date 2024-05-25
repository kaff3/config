return {
  'theprimeagen/harpoon',

  config = function()
    require("harpoon").setup({
      global_settings = {
        tmux_autoclose_windows = true
      }
    })

    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    local tmux = require("harpoon.tmux")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>5", function() ui.nav_file(5); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>6", function() ui.nav_file(6); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>7", function() ui.nav_file(7); vim.cmd("norm zz") end)
    vim.keymap.set("n", "<leader>8", function() ui.nav_file(8); vim.cmd("norm zz") end)

    vim.keymap.set("n", "<leader>t", function() tmux.gotoTerminal(1) end)
  end
}


