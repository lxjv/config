return {
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
        require('which-key').setup()

        -- Document existing key chains
        require('which-key').add {
            { '<leader>b', group = 'Buffers' },
            { '<leader>b_', hidden = true },
            { '<leader>bh', group = 'Horizontal' },
            { '<leader>b_', hidden = true },
            { '<leader>bv', group = 'Vertical' },
            { '<leader>b_', hidden = true },
            { '<leader>c', group = 'Code' },
            { '<leader>c_', hidden = true },
            { '<leader>d', group = 'Document' },
            { '<leader>d_', hidden = true },
            { '<leader>g', group = 'Git' },
            { '<leader>g_', hidden = true },
            { '<leader>h', group = 'Git Hunk' },
            { '<leader>h_', hidden = true },
            { '<leader>r', group = 'Rename' },
            { '<leader>r_', hidden = true },
            { '<leader>s', group = 'Search' },
            { '<leader>s_', hidden = true },
            { '<leader>t', group = 'Toggle' },
            { '<leader>t_', hidden = true },
            { '<leader>v', group = 'Visuals' },
            { '<leader>v_', hidden = true },
            { '<leader>f', group = 'Files' },
            { '<leader>f_', hidden = true },
            { '<leader>w', group = 'Workspace' },
            { '<leader>w_', hidden = true },
            {
                mode = { 'n', 'v' },
                { '<leader>h', group = 'Git Hunk' },
                { '<leader>h_', hidden = true },
            },
        }
    end,
}
