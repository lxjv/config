return {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
        'SmiteshP/nvim-navic',
        'nvim-tree/nvim-web-devicons', -- optional dependency
    },
    config = function()
        require('barbecue').setup {
            theme = 'catppuccin',
        }
        vim.keymap.set('n', '<leader>wv', '<cmd>lua require("barbecue.ui").toggle()<CR>', { desc = 'Toggle barbecue' })
    end,
}
