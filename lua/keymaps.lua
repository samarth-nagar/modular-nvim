-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w<CR> ', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<M-Q>', ':qa!<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<M-q>', ':q<CR>', { silent = true })
vim.keymap.set({ 'i' }, 'jj', '<Esc>', { silent = true })

vim.keymap.set({ 'n' }, 'dw', 'diw', { silent = true })
vim.keymap.set({ 'n' }, 'yw', 'yiw', { silent = true })
vim.keymap.set({ 'n' }, 'cw', 'ciw', { silent = true })
vim.keymap.set({ 'n' }, 'vv', 'V', { silent = true })

vim.api.nvim_set_keymap('n', '<leader>ts', ':set scrolloff=0<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tS', ':set scrolloff=999<CR>', { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>tC", ":Lazy load codeium.vim <cr>", { noremap = true })

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

vim.keymap.set('n', '[x', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']x', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })



vim.api.nvim_set_keymap('n', '<leader>tt', ':term <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '!', ':TroubleToggle<CR>', { noremap = true, silent = true })


vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gc")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gc")

vim.keymap.set('n', 'J', "mzJ`z")

vim.keymap.set('n', '<C-d>', "<c-d>zz")
vim.keymap.set('n', '<C-u>', "<c-u>zz")

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'nzzzv')

vim.keymap.set('i', '<C-c', '<Esc>')


vim.keymap.set('x', '<leader>p', '\"_dP')

-- [[ Highlight on yank ]]
--
-- See `:help vim.highlight.on_yank()`
--
--
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- vim: ts=4 sts=4 sw=4 et
