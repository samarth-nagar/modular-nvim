-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "krb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup {}
    end
  },

  { "RRethy/vim-illuminate" },
  'romgrk/doom-one.vim',

}
