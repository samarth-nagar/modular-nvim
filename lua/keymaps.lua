-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w<CR> ', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<M-Q>', ':qa!<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<M-q>', ':q<CR>', { silent = true })
vim.keymap.set({ 'i' }, 'jj', '<Esc>', { silent = true })

vim.api.nvim_set_keymap('n', '<leader>ts', ':set scrolloff=0<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tS', ':set scrolloff=999<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>ts', ':set scrolloff=0<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tS', ':set scrolloff=999<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Tab>', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':bdelete<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<M-t>', ':! ctp <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-r>', ':! run <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'E', '$', { noremap = true })
vim.api.nvim_set_keymap('n', 'B', '0', { noremap = true })
vim.api.nvim_set_keymap('n', '=', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>tt', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.api.nvim_set_keymap('n', '<leader>tt', ':term <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt', ':TroubleToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':TroubleToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '!', ':TroubleToggle<CR>', { noremap = true, silent = true })
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim: ts=2 sts=2 sw=2 et
