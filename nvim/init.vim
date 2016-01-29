set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set showcmd		    "show partial commands

set number		    "show line numbers

set hlsearch		"highlight search results
set incsearch		"immediately show matches

set ignorecase		"case insensitive searching
set smartcase		"case sensitive searching when pattern includes upper case characters

set autoindent		"indent new line like the previous one

autocmd FileType tex setlocal spell spelllang=de_de

filetype plugin indent on
syntax on

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'lervag/vimtex'
call plug#end()
