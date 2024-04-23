-- i just put random plugins here that arent interesting enough for their own files

return {
  -- adds justfile syntax highlight
  { 'NoahTheDuke/vim-just', ft = { 'just' } },

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- highlights todo comments
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },

  -- Tracks my coding time
  { 'wakatime/vim-wakatime', lazy = false },
}
