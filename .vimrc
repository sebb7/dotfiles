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
set termguicolors
colorscheme base16-onedark
let g:airline_theme='base16'

" cursorline
set cursorline

" make backspace work like most other programs
set backspace=2

" ^n colots options
highlight Pmenu ctermbg=white guibg=black ctermfg=grey
highlight PmenuSel ctermbg=white guibg=black ctermfg=black

" 81 character line
set colorcolumn=81

" nerdtree at start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif"

" Copy to global clipboard not just yank into buffer
let s:os = substitute(system('uname'), "\n", "", "")
if "Linux" == s:os
	noremap <Leader>y "*y
elseif "Darwin" == s:os
	noremap <Leader>y "+y
endif

" plugins:
" alchemist.vim
" nerdtree.vim
" vim-airline-themes
" vim-markdown-preview
" base16-vim
" vim-airline
" vim-elixir
" vim-mix-format
