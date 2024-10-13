return {
    {
        'stevearc/oil.nvim',
        keys = {
            { 'n', '<leader>fe', '<cmd>Oil<CR>', { desc = 'File explorer (Oil)' } },
            { 'n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' } },
        },
        opts = {
            default_file_explorer = true,
            skip_confirm_for_simple_edits = true,
            watch_for_changes = true,
            natural_order = true,
            buf_options = {
                buflisted = false,
                bufhidden = 'hide',
            },
            win_options = {
                wrap = false,
            },
            is_always_hidden = function(name, bufnr)
                return false
            end,
        },
        -- Optional dependencies
        dependencies = { 'echasnovski/mini.icons' },
    },
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'echasnovski/mini.icons',
        },
        keys = {
            { 'n', '<leader>ft', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file tree' } },
        },
        opts = {
            view = {
                side = 'right',
            },
        },
    },
}
