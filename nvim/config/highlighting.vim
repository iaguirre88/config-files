" Syntax and highlighting
syntax enable
set cursorline

let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_invert_selection = 0
let g:gruvbox_italic = 1
let g:airline_theme = 'gruvbox'

colorscheme gruvbox
set background=dark

let g:indentLine_color_term = 237
let g:indentLine_setColors = 1
let g:indentLine_enabled = 0

" Line numbers
set number
set relativenumber
map <C-n> :set number! relativenumber!<CR>

" Highlight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
:autocmd InsertLeave * redraw!

" Highlight active tab
:hi TabLineFill ctermbg=236
:hi TabLine cterm=NONE ctermfg=246 ctermbg=236
:hi TabLineSel ctermfg=234 ctermbg=246
