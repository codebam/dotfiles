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
    Plug 'chriskempson/base16-vim'
    Plug 'dracula/vim'
    Plug 'tomasr/molokai'
    Plug 'nanotech/jellybeans.vim'
    Plug 'sjl/badwolf'
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
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        " Plug 'Shougo/deoplete.nvim'
        " Plug 'roxma/nvim-yarp'
        " Plug 'roxma/vim-hug-neovim-rpc'
        " commented out because this segfaults on musl
    endif
    call plug#end()
"
    " display options
        " colorscheme
        colorscheme jellybeans
        " colorscheme badwolf

        " let g:tokyonight_style = 'storm' " available: night, storm
        " let g:tokyonight_enable_italic = 1
        " let g:tokyonight_disable_italic_comment = 1
        " colorscheme tokyonight
        set background=dark
    "
        " highlight
        " highlight Folded guibg=<X>
        " highlight StatusLine guibg=<X>
        " highlight StatusLineNC guibg=<X>
        " highlight SignColumn guibg=<X>
        " " highlight VertSplit guibg=<X>
    "
            " ale
            " highlight ALEErrorSign guibg=<X> guifg=#fb4934
            " highlight ALEWarningSign guibg=<X> guifg=#fabd2f
        "
            " gitgutter
            let g:gitgutter_override_sign_column_highlight = 0
            " highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2
            " highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3
            " highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1
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
        " neovim
        " let g:python3_host_prog = "/usr/bin/python3.8"
    "
        " netrw
        let g:netrw_banner = 0
        let g:netrw_liststyle = 3
        let g:netrw_browse_split = 4
        let g:netrw_altv = 1
        let g:netrw_winsize = 20
    "
        " ale
        " let g:ale_sign_error = '!'
        " let g:ale_sign_warning = '.'
        let g:ale_fix_on_save = 1
        let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'rust': ['rustfmt'],
        \   'c': ['clang-format'],
        \   'cs': ['uncrustify'],
        \   'go': ['goimports'],
        \   'cpp': ['clang-format'],
        \   'javascript': ['eslint'],
        \   'json': ['prettier', 'jq'],
        \   'java': ['google_java_format'],
        \   'python': ['autopep8', 'black', 'add_blank_lines_for_python_control_statements'],
        \   'markdown': ['prettier'],
        \}
        let g:ale_linters = {
        \   'rust': ['rls', 'cargo'],
        \   'go': ['gofmt', 'golint', 'govet', 'gobuild'],
        \}
        let g:ale_echo_msg_error_str = 'E'
        let g:ale_echo_msg_warning_str = 'W'
        let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
        let g:ale_rust_rustfmt_options = '--edition 2018'
        let g:ale_set_balloons = 1
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
