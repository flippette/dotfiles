-- set leader key
vim.g.mapleader = ' '

-- ui config
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.splitbelow = true
vim.opt.splitright = true

-- tab width
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- enable smart indent
vim.opt.smartindent = true

-- disable line wrapping
vim.opt.wrap = false

-- swap, backup and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false
vim.opt.undodir = os.getenv('HOME') .. '/.local/share/nvim/undodir'

-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- enable 24-bit color
vim.opt.termguicolors = true

-- set scrolloff distance
vim.opt.scrolloff = 8

-- misc settings
vim.opt.updatetime = 50
