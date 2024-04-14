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

local opt = vim.opt
local g = vim.g

g.mapleader = ' '
g.maplocalleader = ' '

-- Make line numbers default
opt.number = true
opt.relativenumber = true

opt.mouse = 'a'

opt.showmode = false

-- use system clipboard
opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undodir = vim.fn.stdpath 'data' .. '/undo'
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

require 'autocmds'

require 'keymaps'

if g.neovide then
  require 'neovide' -- sets some gui stuff
end

-- setup lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup { { import = 'plugins' } }

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
