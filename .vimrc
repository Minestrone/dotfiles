"GLOBAL Settings

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
let g:solarized_termcolors=256
syntax on
set background=dark 
"colorscheme solarized
