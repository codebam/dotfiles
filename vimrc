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
    set clipboard=unnamedplus
    set ignorecase
    set smartcase
    set noshowmode
    set laststatus=0
    set foldmethod=indent
    set nofoldenable
    set autochdir
    set hidden
    set showmatch
    set matchtime=3
    set textwidth=80
    set colorcolumn=80
    set cursorline
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
    Plug 'joshdick/onedark.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-sleuth'
    Plug 'tpope/vim-surround'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'leafgarland/typescript-vim'
    Plug 'cespare/vim-toml'
    Plug 'tomlion/vim-solidity'
    call plug#end()
"
    " display options
        " colorscheme
        colorscheme onedark
        set background=dark
    "
            " gitgutter
            let g:gitgutter_override_sign_column_highlight = 0
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

        " deoplete
        let g:deoplete#enable_at_startup = 1

        " coc.vim
        let g:coc_disable_startup_warning = 1
    "
"
