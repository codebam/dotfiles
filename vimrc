" vim:fileencoding=utf-8:ft=vim:foldmethod=indent

" vim configuration
    " set
    set nocompatible
    syntax on
    filetype plugin indent on
    runtime macros/matchit.vim
    set backspace=indent,eol,start
    set tabstop=8
    set softtabstop=0
    set expandtab
    set shiftwidth=4
    set smarttab
    set nowrap
    set completeopt=longest,menuone,preview
    set previewheight=5
    set wildmode=longest,list,full
    set wildmenu
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set clipboard=unnamedplus
    set ignorecase
    set smartcase
    set noshowmode
    set foldmethod=indent
    set nofoldenable
    set autochdir
    set hidden
    set showmatch
    set matchtime=3
    set textwidth=80
    set undofile
    set undodir=$HOME/.vim/undodir
    "

    " autocmds
    autocmd Filetype mail setlocal textwidth=72 colorcolumn=72
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
    autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
    "

    " plug
    call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm i'  }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-sleuth'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/fzf.vim'
    Plug 'cespare/vim-toml'
    Plug 'tomlion/vim-solidity'
    Plug 'leafgarland/typescript-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'
    Plug 'metakirby5/codi.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'lilydjwg/colorizer'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'folke/todo-comments.nvim'
    call plug#end()
"
    " display options
        " colorscheme
        set background=dark
        colorscheme nord
    "
            " gitgutter
            let g:gitgutter_override_sign_column_highlight = 0
            highlight clear SignColumn
        "
        " remap
        noremap <C-p> :Files<CR>
        noremap <C-h> :History<CR>
        noremap <C-b> :Buffers<CR>
        noremap <Leader><space> :nohlsearch<CR>
        noremap <M-j> :tabprevious<CR>
        noremap <M-k> :tabnext<CR>
        noremap 0 ^
        noremap ^ 0
    "
"
    " plugin options
        " netrw
        let g:netrw_banner = 0
        let g:netrw_liststyle = 3
        let g:netrw_browse_split = 4
        let g:netrw_altv = 1
        let g:netrw_winsize = 20
    "
        " omnisharp
        let g:OmniSharp_timeout = 5
        let g:OmniSharp_server_use_mono = 1
        let g:OmniSharp_highlight_types = 1
        let g:OmniSharp_selector_ui = 'fzf'
    "

        " coc.vim
        let g:coc_disable_startup_warning = 1
        let g:coc_global_extensions = [
              \ 'coc-tsserver',
              \ 'coc-prettier',
              \ 'coc-eslint'
          \ ]
    "

        " lightline
        let g:lightline = {
                    \ 'colorscheme': 'nord',
                    \ }
    "
"
