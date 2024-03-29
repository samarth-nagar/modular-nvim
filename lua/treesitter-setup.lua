-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
vim.defer_fn(function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {

        -- Add languages to be installed here that you want installed for treesitter
        ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'javascript', 'typescript',
            'vimdoc', 'vim', 'bash', 'markdown', 'markdown_inline', },

        -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
        auto_install = false,

        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<c-space>',
                node_incremental = '<c-space>',
                scope_incremental = '<c-i>',
                node_decremental = '<M-space>',
            },
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ['aa'] = '@parameter.outer',
                    ['ia'] = '@parameter.inner',
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                },
            },
            move = {
                enable = false,
                set_jumps = false, -- whether to set jumps in the jumplist
                goto_next_start = {
                    ['<leader>]m'] = '@function.outer',
                    ['<leader>]o'] = '@class.outer',
                },
                goto_next_end = {
                    ['<leader>]M'] = '@function.outer',
                    ['<leader>]o'] = '@class.outer',
                },
                goto_previous_end = {
                    ['<leader>[M'] = '@function.outer',
                    ['<leader>[o'] = '@class.outer',
                },
                goto_previous_start = {
                    ['<leader>[m'] = '@function.outer',
                    ['<leader>[o'] = '@class.outer',
                },
            },
            swap = {
                enable = false,
                swap_next = {
                    -- ['<leader>a'] = '@parameter.inner',
                },
                swap_previous = {
                    -- ['<leader>A'] = '@parameter.inner',
                },
            },
        },
    }
end, 0)

-- vim: ts=4 sts=4 sw=4 et
