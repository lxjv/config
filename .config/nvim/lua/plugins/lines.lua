return {
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons', -- optional dependency
        },
        keys = {
            { 'n', '<leader>wv', '<cmd>lua require("barbecue.ui").toggle()<CR>', { desc = 'Toggle barbecue' } }
        },
        opts = {
            theme = 'catppuccin'
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            theme = 'catpuccin',
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = {
                    function()
                        local ok, pomo = pcall(require, 'pomo')
                        if not ok then
                            return ''
                        end

                        local timer = pomo.get_first_to_finish()
                        if timer == nil then
                            return ''
                        end

                        return '󰄉 ' .. tostring(timer)
                    end,
                },
                lualine_y = { 'filetype' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        },
    }
}