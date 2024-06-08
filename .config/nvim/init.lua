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
    require 'la.vscode'
end

if vim.g.neovide then
    require 'la.gui'
end

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically.

    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

    { 'NoahTheDuke/vim-just', ft = { 'just' } },

    { 'wakatime/vim-wakatime', lazy = false },

    {
        'vyfor/cord.nvim',
        build = './build',
        event = 'VeryLazy',
        opts = {},
    },

    {
        'folke/noice.nvim',
        event = 'VeryLazy',
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            'MunifTanjim/nui.nvim',
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            'rcarriga/nvim-notify',
        },
    },

    { import = 'plugins' },
}, { -- lazy settings
    change_detection = {
        notify = false,
    },
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
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
