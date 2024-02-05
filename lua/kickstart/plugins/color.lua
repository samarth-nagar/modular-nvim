return {
  "norcalli/nvim-colorizer.lua",
  lazy = true,     -- make sure to load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- load the colorscheme here
    require 'colorizer'.setup({
      "*",                              -- highlight all files, but customize some others
      css = { rgb_fn = true, },         -- enable parsing rgb(...) notation in css
      html = { names = true, },         -- disable parsing "names" like blue or gray
      yaml = { names = true, }          -- enable colorizing yaml files
    }, {
      rgb = { fg = '#rgb', },           -- rgb highlights
      rrggbb = { fg = '#rrggbb', },     -- rrggbb highlights
      names = { fg = '#names', },       -- color names
      rrggbbaa = { fg = '#rrggbbaa', }, -- rrggbbaa highlights
      rgb_fn = { fg = '#rgb_fn', },     -- highlight rgb(...) notation
      aarrggbb = { fg = '#aarrgbb', },  -- aarrggbb hex codes
    })
  end,
}
-- vim: ts=4 sts=4 sw=4 et
