set nocompatible
syntax on

set nu rnu " hybrid line numbers

set autoindent
filetype indent plugin on

set cursorline
set cursorcolumn

autocmd InsertEnter * norm zz

" statusline
set laststatus=2
set noshowmode

" colour scheme
set termguicolors
colorscheme catppuccin_mocha

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'wakatime/vim-wakatime'
call plug#end()
