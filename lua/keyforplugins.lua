--Twilight
vim.api.nvim_set_keymap("n", "<leader>tl", ":Twilight  <cr>", { noremap = true })

--codeium
vim.api.nvim_set_keymap("n", "<leader>tC", ":Lazy load codeium.vim <cr>", { noremap = true })

-- nvimtree
vim.api.nvim_set_keymap('n', '=', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- trouble
vim.api.nvim_set_keymap('n', '!', ':TroubleToggle<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "tr", function() require("trouble").toggle("lsp_references") end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
