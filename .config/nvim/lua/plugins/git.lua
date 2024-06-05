return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gg', '<cmd>Git<CR>', { desc = 'Status' })
      vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<CR>', { desc = 'Commit' })
      vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>', { desc = 'Blame' })
      vim.keymap.set('n', '<leader>gA', '<cmd>Git add .<CR>', { desc = 'Add all files' })
      vim.keymap.set('n', '<leader>gP', '<cmd>Git push<CR>', { desc = 'Push' })
      vim.keymap.set('n', '<leader>gp', '<cmd>Git pull<CR>', { desc = 'Pull' })
      vim.keymap.set('n', '<leader>gP', '<cmd>Git sync<CR>', { desc = 'Sync' })
    end,
  },

{
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>gl", "<cmd>LazyGit<cr>", desc = "open lazygit" }
  }
  }
}
