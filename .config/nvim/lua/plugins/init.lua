-- i just put random plugins here that arent interesting enough for their own files

return {
  -- adds justfile syntax highlight
  { 'NoahTheDuke/vim-just', ft = { 'just' } },

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- highlights todo comments
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },
  
  -- weee
 {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
} 
}
