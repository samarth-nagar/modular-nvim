return {
    { "RRethy/vim-illuminate" },

    'romgrk/doom-one.vim',
    'exafunction/codeium.vim',
    {
        "jiaoshijie/undotree",
        dependencies = "nvim-lua/plenary.nvim",
        config = true,
        keys = { -- load the plugin only when using it's keybinding:
            { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
        },
    },
    'kaiuri/nvim-juliana',
    "rmehri01/onenord.nvim",
    "cpea2506/one_monokai.nvim",
    "titanzero/zephyrium",
    -- Lua
    {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    "ray-x/go.nvim",

    -- install without yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    'kevinhwang91/nvim-ufo',
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },

        opts = {
            signs = false,     -- show icons in the signs column
            sign_priority = 8, -- sign priority
            -- keywords recognized as todo comments
            keywords = {
                FIX = {
                    icon = " ", -- icon used for the sign, and in search results
                    color = "error", -- can be a hex color, or a named color (see below)
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
                    -- signs = false, -- configure signs for some keywords individually
                },
                TODO = { icon = "", color = "info" },
                HACK = { icon = " ", color = "warning" },
                WARN = { icon = "", color = "warning", alt = { "WARNING", "XXX" } },
                PERF = { icon = "", color = "test", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = "", color = "info", alt = { "INFO" } },
                TEST = { icon = "󰺦", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
            },
            gui_style = {
                fg = "NONE",       -- The gui style to use for the fg highlight group.
                bg = "BOLD",       -- The gui style to use for the bg highlight group.
            },
            merge_keywords = true, -- when true, custom keywords will be merged with the defaults
            -- highlighting of the line containing the todo comment
            -- * before: highlights before the keyword (typically comment characters)
            -- * keyword: highlights of the keyword
            -- * after: highlights after the keyword (todo text)
            highlight = {
                multiline = true,                -- enable multine todo comments
                multiline_pattern = "^.",        -- lua pattern to match the next multiline from the start of the matched keyword
                multiline_context = 10,          -- extra lines that will be re-evaluated when changing a line
                before = "",                     -- "fg" or "bg" or empty
                keyword = "wide",                -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
                after = "fg",                    -- "fg" or "bg" or empty
                pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
                comments_only = true,            -- uses treesitter to match keywords in comments only
                max_line_len = 400,              -- ignore lines longer than this
                exclude = {},                    -- list of file types to exclude highlighting
            },
            -- list of named colors where we try to extract the guifg from the
            -- list of highlight groups or use the hex color if hl not found as a fallback
            colors = {
                error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
                warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
                info = { "DiagnosticInfo", "#2563EB" },
                hint = { "DiagnosticHint", "#10B981" },
                default = { "Identifier", "#7C3AED" },
                test = { "Identifier", "#FF00FF" }
            },
            search = {
                command = "rg",
                args = {
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                },
                -- regex that will be used to match keywords.
                -- don't replace the (KEYWORDS) placeholder
                pattern = [[\b(KEYWORDS):]], -- ripgrep regex
                -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
            },
        }

    },
    -- Lazy
    {
        'dgagn/diagflow.nvim',
        -- event = 'LspAttach', This is what I use personnally and it works great
        opts = {}
    }
    -- Lua

}
-- vim: ts=4 sts=4 sw=4 et
