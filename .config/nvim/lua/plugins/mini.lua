return { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
        require('mini.ai').setup { n_lines = 500 }
        -- require('mini.surround').setup()
        require('mini.files').setup {
            mappings = {
                close = '<esc>',
                go_in = '<enter>',
            },
        }
        vim.keymap.set('n', '<leader>e', '<cmd>lua MiniFiles.open()<CR>', { desc = 'Open file explorer' })
    end,
}
