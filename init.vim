
call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

syntax on
colorscheme dracula

highlight Normal ctermbg=none guibg=none

set hidden

set number
" set relativenumber
set termguicolors

set mouse=a

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

