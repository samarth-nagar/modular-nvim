return -- Lua
{
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('poimandres').setup {
            bold_vert_split = false,          -- use bold vertical separators
            dim_nc_background = true,         -- dim 'non-current' window backgrounds
            disable_background = false,       -- disable background
            disable_float_background = false, -- disable background for floats
            disable_italics = true,           -- disable italics
        }
    end,

    -- optionally set the colorscheme within lazy config
}

-- vim: ts=4 sts=4 sw=4 et
