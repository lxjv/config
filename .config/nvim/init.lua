--[[
                   
 ,dPYb,            
 IP'`Yb            
 I8  8I            
 I8  8'            
 I8 dP    ,gggg,gg 
 I8dP    dP"  "Y8I 
 I8P    i8'    ,8I 
,d8b,_ ,d8,   ,d8b,
8P'"Y88P"Y8888P"`Y8 's neovim config
]]
--

require 'la.options'
require 'la.keymaps'
require 'la.autocmds'

if vim.g.vscode then
    require 'la.vscode' -- neovim but worse
end

if vim.g.neovide then
    require 'la.gui' -- for the twice a year i use neovide
end

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- ** MY PLUGINS
    {
        dir = '/Users/la/Projects/dev/extensions/nvim/itchy',
    },

    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically.

    {
        'folke/todo-comments.nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('todo-comments').setup()
            vim.keymap.set('n', '<leader>dt', '<cmd>TodoTelescope cwd=<CR>' .. vim.fn.getcwd(), { desc = 'Show TODO comments' })
        end,
    },

    -- time tracking
    { 'wakatime/vim-wakatime', lazy = false },

    { -- discord rich presence
        'vyfor/cord.nvim',
        build = './build',
        event = 'VeryLazy',
        opts = {},
    },

    { -- funky ui
        'folke/noice.nvim',
        -- enabled = false,
        event = 'VeryLazy',
        opts = {},
        dependencies = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify',
        },
    },

    { import = 'plugins' },
}, { -- lazy settings
    change_detection = {
        notify = false,
    },
    install = {
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { 'catppuccin' },
    },
    ui = {
        icons = vim.g.have_nerd_font and {} or {
            cmd = '⌘',
            config = '🛠',
            event = '📅',
            ft = '📂',
            init = '⚙',
            keys = '🗝',
            plugin = '🔌',
            runtime = '💻',
            require = '🌙',
            source = '📄',
            start = '🚀',
            task = '📌',
            lazy = '💤 ',
        },
    },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
