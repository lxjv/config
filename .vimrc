set nocompatible
syntax on

set nu rnu " hybrid line numbers

set autoindent
filetype indent plugin on

set cursorline
set cursorcolumn

autocmd InsertEnter * norm zz

" colour scheme
set termguicolors
colorscheme catppuccin_mocha
