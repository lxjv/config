return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    config = function()
        require('catppuccin').setup {
            transparent_background = true,
            integrations = {
                barbar = true,
                cmp = true,
                fidget = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                mason = true,
                noice = true,
                telescope = {
                    enabled = true,
                },
                which_key = true,
                barbecue = {
                    dim_dirname = true, -- directory name is dimmed by default
                    bold_basename = true,
                    dim_context = false,
                    alt_background = false,
                },
                mini = {
                    enabled = true,
                    indentscope_color = '',
                },
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        }
        vim.cmd.colorscheme 'catppuccin'
    end,
}
