require('diagflow').setup({
    enable = true,
    max_width = 40,     -- The maximum width of the diagnostic messages
    max_height = 10,    -- the maximum height per diagnostics
    severity_colors = { -- The highlight groups to use for each diagnostic severity level
        error = "DiagnosticFloatingError",
        warning = "DiagnosticFloatingWarn",
        info = "DiagnosticFloatingInfo",
        hint = "DiagnosticFloatingHint",
    },
    format = function(diagnostic)
        return diagnostic.message
    end,
    gap_size = 0,
    scope = 'cursor', -- 'cursor', 'line' this changes the scope, so instead of showing errors under the cursor, it shows errors on the entire line.
    padding_top = 1,
    padding_right = 1,
    text_align = 'right',                                  -- 'left', 'right'
    placement = 'top',                                     -- 'top', 'inline'
    inline_padding_left = 0,                               -- the padding left when the placement is inline
    update_event = { 'DiagnosticChanged', 'BufReadPost' }, -- the event that updates the diagnostics cache
    toggle_event = {},                                     -- if InsertEnter, can toggle the diagnostics on inserts
    show_sign = true,                                      -- set to true if you want to render the diagnostic sign before the diagnostic message
    render_event = { 'DiagnosticChanged', 'CursorMoved' },
    border_chars = {
        top_left = "┌",
        top_right = "┐",
        bottom_left = "└",
        bottom_right = "┘",
        horizontal = "─",
        vertical = "│"
    },
    show_borders = false,
})


require('zen-mode').setup({

    window = {
        backdrop = 0.1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        -- * a function that returns the width or the height
        width = 98, -- width of the Zen window
        height = 1, -- height of the Zen window
        -- by default, no options are changed for the Zen window
        -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
            -- signcolumn = "no", -- disable signcolumn
            -- number = false, -- disable number column
            -- relativenumber = false, -- disable relative numbers
            -- cursorline = false, -- disable cursorline
            -- cursorcolumn = false, -- disable cursor column
            -- foldcolumn = "0", -- disable fold column
            -- list = false, -- disable whitespace characters
        },
    },
    plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        options = {
            enabled = true,
            ruler = true,   -- disables the ruler text in the cmd line area
            showcmd = true, -- disables the command in the last line of the screen
            -- you may turn on/off statusline in zen mode by setting 'laststatus'
            -- statusline will be shown only if 'laststatus' == 3
            laststatus = 0,             -- turn off the statusline in zen mode
        },
        twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false },     -- disables the tmux statusline
        -- this will change the font size on kitty when in zen mode
        -- to make this work, you need to set the following kitty options:
        -- - allow_remote_control socket-only
        -- - listen_on unix:/tmp/kitty
        kitty = {
            enabled = false,
            font = "+4", -- font size increment
        },
        -- this will change the font size on alacritty when in zen mode
        -- requires  Alacritty Version 0.10.0 or higher
        -- uses `alacritty msg` subcommand to change font size
        alacritty = {
            enabled = false,
            font = "14", -- font size
        },
        -- this will change the font size on wezterm when in zen mode
        -- See alse also the Plugins/Wezterm section in this projects README
        wezterm = {
            enabled = false,
            -- can be either an absolute font size or the number of incremental steps
            font = "+4", -- (10% increase per step)
        },
    },
    -- callback where you can add custom code when the Zen window opens
    on_open = function(win)
    end,
    -- callback where you can add custom code when the Zen window closes
    on_close = function()
    end,
})
