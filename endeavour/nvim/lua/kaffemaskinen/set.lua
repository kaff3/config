-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indention
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim.undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- layout
vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
