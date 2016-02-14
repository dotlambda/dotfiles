set shell=bash        " fish is not POSIX compatible

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set showcmd           " Show partial commands

set number            " Show line numbers

set hlsearch          " Highlight search results
set incsearch         " Immediately show matches

set ignorecase        " Case insensitive searching
set smartcase         " Case sensitive searching when pattern includes upper case characters

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType tex setlocal spell spelllang=de_de

" Set up :make to use fish for syntax checking.
autocmd FileType fish compiler fish
" Set this to have long lines wrap inside comments.
autocmd FileType fish setlocal textwidth=79
" Enable folding of block structures in fish.
autocmd FileType fish setlocal foldmethod=expr

filetype plugin indent on
syntax on

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'scrooloose/syntastic'
  Plug 'lervag/vimtex'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'dag/vim-fish'

  " Install YouCompleteMe with JavaScript support 
  if v:version > 703
    Plug 'Valloric/YouCompleteMe', { 'do': 'python2 ./install.py --tern-completer' }
  endif

  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
call plug#end()
