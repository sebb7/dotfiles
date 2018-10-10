execute pathogen#infect()
syntax on

filetype plugin indent on
:set shiftwidth=4
:set expandtab

" highlight matching brackets
:set showmatch

" display line numbers
:set number

"set termguicolors
colorscheme one
set background=dark
let g:ariline_theme = 'one'

" ^n colots options
highlight Pmenu ctermbg=white guibg=black ctermfg=grey
highlight PmenuSel ctermbg=white guibg=black ctermfg=black

" 80 character line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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
