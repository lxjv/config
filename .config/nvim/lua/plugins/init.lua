-- i just put random plugins here that arent interesting enough for their own files

return {

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Tracks my coding time
  { 'wakatime/vim-wakatime', lazy = false },

  -- statusline
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = { theme = 'catpuccin' } },

  -- comments

  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },

  {
    'max397574/colortils.nvim',
    cmd = 'Colortils',
    config = function()
      require('colortils').setup()
    end,
  },
}
