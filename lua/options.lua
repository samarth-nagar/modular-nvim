-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
vim.wo.number = true

vim.wo.relativenumber = true

vim.opt.tabstop = 4

vim.opt.cursorline = true

vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.scrolloff = 19

vim.opt.colorcolumn = "88"

vim.opt.linebreak = true

vim.opt.conceallevel = 1

-- Set highlight on search

vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

vim.opt.splitbelow = true

vim.opt.splitright = true

-- Enable mouse mode
vim.o.mouse = "nvi"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 200
vim.o.timeoutlen = 250

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end
---------------------------for UFO--------------

-- vim: ts=4 sts= sw=4 et
