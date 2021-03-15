execute pathogen#infect()
syntax on

filetype plugin indent on
set shiftwidth=4
set expandtab

" remap leader
let mapleader="'"

" highlight matching brackets
set showmatch

" display line numbers
set number

" theme
let g:airline_theme='solarized'
set background=light
colorscheme solarized

" cursorline
set cursorline

" make backspace work like most other programs
set backspace=2

" ^n colots options
highlight Pmenu ctermbg=white guibg=black ctermfg=grey
highlight PmenuSel ctermbg=white guibg=black ctermfg=black

" 81 character line
set colorcolumn=81

" Copy to system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p

" Showing trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
