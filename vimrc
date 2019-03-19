" vim:fileencoding=utf-8:ft=vim:foldmethod=indent

" vim configuration
    " set
    set nocompatible
    syntax on
    set tabstop=8
    set softtabstop=0
    set expandtab
    set shiftwidth=4
    set smarttab
    set nowrap
    set fillchars+=vert:│
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
    set autochdir
    set hidden
    set showmatch
    set matchtime=3
    set textwidth=80
"

    " autocmds
    autocmd Filetype mail set textwidth=72
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
"

    " plug
    call plug#begin('~/.vim/plugged')
    Plug 'w0rp/ale'
    Plug 'chriskempson/base16-vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-sleuth'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    call plug#end()
"
    " display options
        " colorscheme
        colorscheme base16-default-dark
        set background=dark
    "
        " highlight
        highlight Folded guibg=<X>
        highlight StatusLine guibg=<X>
        highlight StatusLineNC guibg=<X>
        highlight SignColumn guibg=<X>
        highlight VertSplit guibg=<X>
    "
            " ale
            highlight ALEErrorSign guibg=<X> guifg=#fb4934
            highlight ALEWarningSign guibg=<X> guifg=#fabd2f
        "
            " gitgutter
            let g:gitgutter_override_sign_column_highlight = 0
            highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2
            highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3
            highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1
        "
        " remap
        noremap <C-k> :close<CR>
        noremap <C-p> :Files<CR>
        noremap <C-h> :History<CR>
        noremap <C-b> :Buffers<CR>
        noremap <Leader><space> :nohlsearch<CR>
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
        " ale
        let g:ale_sign_error = '!'
        let g:ale_sign_warning = '.'
        let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'rust': ['rustfmt'],
        \   'c': ['clang-format'],
        \   'cpp': ['clang-format'],
        \   'javascript': ['standard'],
        \   'java': ['google_java_format'],
        \}
        let g:ale_linters = {
        \   'rust': ['rls', 'cargo'],
        \}
    "
        " omnisharp
        let g:OmniSharp_timeout = 5
        let g:OmniSharp_server_use_mono = 1
        let g:OmniSharp_highlight_types = 1
        let g:OmniSharp_selector_ui = 'fzf'
    "
"
