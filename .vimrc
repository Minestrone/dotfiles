" General
" ---------------------------
set nocompatible            " turn off vi-compatible mode
set modeline
set history=50          " lines of history to remember
set t_Co=256
filetype plugin indent on

call pathogen#infect('bundle')
syntax on
syntax enable

" UI
" ...........................
set ruler
set number
set nowrap
set showcmd
set cmdheight=2

colors flatcolor_vim

" TAB settings
" ...........................
set autoindent
set smartindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
