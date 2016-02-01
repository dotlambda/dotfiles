set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set showcmd     " Show partial commands

set number      " Show line numbers

set hlsearch    " Highlight search results
set incsearch   " Immediately show matches

set ignorecase  " Case insensitive searching
set smartcase   " Case sensitive searching when pattern includes upper case characters

autocmd FileType tex setlocal spell spelllang=de_de

filetype plugin indent on
syntax on

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'lervag/vimtex'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'editorconfig/editorconfig-vim'

  " Install YouCompleteMe with JavaScript support 
  Plug 'Valloric/YouCompleteMe', { 'do': 'python2 ./install.py --tern-completer' }
call plug#end()
