--Twilight
vim.api.nvim_set_keymap("n", "<leader>tl", ":Twilight<cr>", { noremap = true, silent = true })

--zenmode
vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<cr>", { noremap = true, silent = true })

--codeium
vim.api.nvim_set_keymap("n", "<leader>tC", ":Lazy load codeium.vim <cr>", { noremap = true })

-- nvimtree
vim.api.nvim_set_keymap('n', '=', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- trouble
vim.api.nvim_set_keymap('n', '!', ':TroubleToggle<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fo', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })

vim.keymap.set("n", "tr", function() require("trouble").toggle("lsp_references") end, { desc = "lsp_references" })
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
    { desc = "workspace_diagnostics" })

vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle("document_diagnostics") end,
    { desc = "lsp_references" })

vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end, { desc = "quickfix" })
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end, { desc = "loclist" })
