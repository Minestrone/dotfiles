" General
" ---------------------------
set nocompatible            " turn off vi-compatible mode
set modeline
set history=50          " lines of history to remember
set t_Co=256
filetype plugin indent on

" UI
" ...........................
set ruler
set number
set nowrap
set showcmd
set cmdheight=2

" Funky-Nav
" ...........................
map a h
map s j
map d k
map f l

call pathogen#infect('bundle')
syntax on

" TAB settings
" ...........................
set autoindent
set smartindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set softtabstop=4
set expandtab

syntax enable
