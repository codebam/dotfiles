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
    set incsearch
    set hlsearch
    set showmatch
    set matchtime=3
    set textwidth=80
    set undofile
    set undodir=$HOME/.vim/undodir
    set tags=./tags;,tags;
    set scrolloff=0
    " set fillchars+=vert:\Ã¢ÂÂ

    "

    " autocmds
    autocmd Filetype mail setlocal textwidth=72 colorcolumn=72
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
    autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
    autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
    autocmd FileType svelte setlocal shiftwidth=2 tabstop=2
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
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'cespare/vim-toml'
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'
    Plug 'metakirby5/codi.vim'
    Plug 'jeffkreeftmeijer/vim-dim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'habamax/vim-polar'
    Plug 'lilydjwg/colorizer'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'folke/todo-comments.nvim'
    Plug 'honza/vim-snippets'
    Plug 'leafOfTree/vim-svelte-plugin'
    call plug#end()
"
    " display options
        " colorscheme
        set background=dark
        colorscheme nord
        set fillchars+=vert:│

    "
            " gitgutter
            let g:gitgutter_override_sign_column_highlight = 0
            highlight clear SignColumn
        "
            " italic comments
            highlight Comment cterm=italic gui=italic
        "
        " remap
        noremap <C-p> :Files<CR>
        noremap <C-h> :History<CR>
        noremap <C-b> :Buffers<CR>
        noremap <C-s> :CocList snippets<CR>
        noremap <M-s> :CocCommand snippets.editSnippets<CR>
        noremap <Leader><space> :nohlsearch<CR>
        noremap <M-j> :bp<CR>
        noremap <M-k> :bn<CR>
        noremap 0 ^
        noremap ^ 0
        inoremap <silent><expr> <TAB>
          \ coc#pum#visible() ? coc#pum#next(1) :
          \ CheckBackspace() ? "\<Tab>" :
          \ coc#refresh()
        inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

        " Make <CR> to accept selected completion item or notify coc.nvim to format
        " <C-g>u breaks current undo, please make your own choice
        inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

        function! CheckBackspace() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction


        let g:coc_snippet_next = '<tab>'
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
        " coc.vim
        let g:coc_disable_startup_warning = 1
        let g:coc_global_extensions = [
              \ 'coc-tsserver',
              \ 'coc-rust-analyzer',
              \ 'coc-prettier',
              \ 'coc-eslint',
              \ 'coc-texlab',
              \ 'coc-go',
              \ 'coc-rust-analyzer',
              \ 'coc-json',
              \ 'coc-html',
              \ 'coc-tailwindcss',
              \ 'coc-snippets',
              \ 'coc-svelte',
              \ 'coc-python',
          \ ]
    "

        " lightline
        let g:lightline = {
                    \ 'colorscheme': 'nord',
                    \ }
    "
"
