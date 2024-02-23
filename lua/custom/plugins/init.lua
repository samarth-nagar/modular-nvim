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
    {
        "karb94/neoscroll.nvim",
        config = function()
            require('neoscroll').setup {}
        end
    },
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
    "sainnhe/sonokai"
    -- Lua

}
-- vim: ts=4 sts=4 sw=4 et
