-- Map Ctrl-h to move cursor left in insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })

-- Map Ctrl-l to move cursor right in insert mode
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })

-- Map Ctrl-j to move cursor down in insert mode
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })

-- Map Ctrl-k to move cursor up in insert mode
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
