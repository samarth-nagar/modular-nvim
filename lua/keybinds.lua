-- Lua
--
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
-- toggle trouble with optional mode

-- open trouble with optional mode

-- close trouble

-- jump to the next item, skipping the groups
require("trouble").next({ skip_groups = true, jump = true });

-- jump to the previous item, skipping the groups
require("trouble").previous({ skip_groups = true, jump = true });

-- jump to the first item, skipping the groups
require("trouble").first({ skip_groups = true, jump = true });

-- jump to the last item, skipping the groups
require("trouble").last({ skip_groups = true, jump = true });
-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>ls", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>ll", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>ld", [[<cmd>lua require("persistence").stop()<cr>]], {})
