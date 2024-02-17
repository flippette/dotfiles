-- map <leader> to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable cursor styling
vim.opt.guicursor = ""

-- use OS clipboard
vim.o.clipboard = "unnamedplus"

-- enable line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- indentation defaults
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 0
vim.o.expandtab = true
vim.o.smartindent = true

-- disable line wrapping
vim.o.wrap = false

-- enable the signcolumn
vim.wo.signcolumn = "yes"

-- better completion
vim.o.completeopt = "menu,menuone"

-- better search
vim.o.hlsearch = false
vim.o.incsearch = true

-- disable tempfiles
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.o.undofile = true

-- enable colors
vim.o.termguicolors = true

-- enable scrolloff
vim.o.scrolloff = 4

-- shorten update time
vim.o.updatetime = 250

-- shorten timeout
vim.o.timeout = true
vim.o.timeoutlen = 250

-- draw 80-column ruler
vim.o.colorcolumn = "80"

-- hide netrw banner
vim.g.netrw_banner = 0
