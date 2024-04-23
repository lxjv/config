return {
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = 'shuttle',
          path = '~/vaults/shuttle',
        },
        {
          name = 'writing',
          path = '~/vaults/Laker Turner/',
        },
      },

      -- see below for full list of options 👇
    },
  },
}
