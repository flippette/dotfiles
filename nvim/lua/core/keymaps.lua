-- common keymap options
local opts = {
  noremap = true,
  silent = true,
}

-- telescope
vim.keymap.set('n', '<leader>f', ':lua require("ext.telescope").pickers.project_files()<CR>', opts)

-- better split navigation
vim.keymap.set('n', '<leader>h', ':split<CR>', opts)
vim.keymap.set('n', '<leader>v', ':vertical split<CR>', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- resize splits with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)
