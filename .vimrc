"GLOBAL Settings

set t_Co=256
set autoindent
set showcmd

set number
set nowrap

map q h
map w j
map e k
map r l

call pathogen#infect('bundle')
syntax on
filetype plugin indent on

"TAB settings
set tabstop=2
set shiftwidth=2
set softtabstop=4
set expandtab

"SOLARIZED Settings
syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
