set nocompatible
syntax on

set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

call plug#begin('~/.vim/plugged')
	Plug 'w0rp/ale'
	Plug 'joshdick/onedark.vim'
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'iamcco/markdown-preview.vim'
        Plug 'tpope/vim-commentary'
call plug#end()

colorscheme onedark

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\}

let g:ale_linters = {
\   'rust': ['rls', 'cargo'],
\}
