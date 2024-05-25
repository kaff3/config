return {
  'sainnhe/gruvbox-material',
  config = function()
    function AddColors(color)
      color = color or "gruvbox-material"
      vim.cmd.colorscheme(color)
    end
    AddColors()
  end
}
