-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
return {
    {
        "kyazdani42/nvim-web-devicons",
        lazy = true,
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        config = function()
            -- load the nvim-tree here
            require("nvim-tree").setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 25,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            })
        end,
    },
    -- other plugins...
}
-- vim: ts=4 sts=4 sw=4 et
