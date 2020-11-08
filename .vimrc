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
	let lines = readfile("/proc/version")
        if lines[0] =~ "microsoft"
            noremap <silent> <leader>y :w !clip.exe<CR><CR>
        else
            noremap <Leader>y "*y
        endif

elseif "Darwin" == s:os
	noremap <Leader>y "+y
endif

" Showing trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
