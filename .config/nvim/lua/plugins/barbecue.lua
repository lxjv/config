return {
  'utilyre/barbecue.nvim',
  name = 'barbecue',
  version = '*',
  dependencies = {
    'SmiteshP/nvim-navic',
    'nvim-tree/nvim-web-devicons', -- optional dependency
  },
  opts = {
    -- configurations go here
  },
  config = function()
    require('barbecue').setup {
      theme = 'catppuccin',
    }
    vim.keymap.set('n', '<leader>vb', '<cmd>lua require("barbecue.ui").toggle()<CR>', { desc = 'Toggle barbecue' })
  end,
}
