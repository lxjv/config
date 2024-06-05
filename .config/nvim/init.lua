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
]]--
require 'options'
require 'autocmds'
require 'keymaps'

if vim.g.neovide then
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

require("lazy").setup({ import = "plugins" }, { change_detection = { notify = false } })
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
