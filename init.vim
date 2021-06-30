
call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'prettier/vim-prettier'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

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
set hlsearch
set noerrorbells
set colorcolumn=80
set expandtab

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

let g:coc_global_extensions = [
\  'coc-snippets',
\  'coc-actions',
\  'coc-lists',
\  'coc-tsserver',
\  'coc-html',
\  'coc-css',
\  'coc-prettier',
\  'coc-vimlsp',
\]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

nmap <leader>rn <Plug>(coc-rename)

" CTRL + o - to go back
nmap <silent> gf <Plug>(coc-definition)

xmap <silent> <leader>a  <Plug>(coc-codeaction-selected)
nmap <silent> <leader>a  <Plug>(coc-codeaction-selected)

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
