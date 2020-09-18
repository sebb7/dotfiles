execute pathogen#infect()
syntax on

filetype plugin indent on
set shiftwidth=4
set expandtab

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

" Copy to global clipboard not just yank into buffer
let s:os = substitute(system('uname'), "\n", "", "")
if "Linux" == s:os
	noremap <Leader>y "*y
elseif "Darwin" == s:os
	noremap <Leader>y "+y
endif

" Showing trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

" plugins:
" https://github.com/vim-airline/vim-airline.git
" https://github.com/vim-airline/vim-airline-themes.git
" https://github.com/mhinz/vim-mix-format.git
" https://github.com/elixir-editors/vim-elixir.git
" https://github.com/slashmili/alchemist.vim.git
" https://github.com/altercation/vim-colors-solarized.git
