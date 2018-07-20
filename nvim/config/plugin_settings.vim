" NERDTree settings
map <C-\> :NERDTreeToggle<CR>

" Open if starting vim with no arguments
autocmd StdinReadPre * let s:std_in=1

" Close NERDTree when a file is opened
let NERDTreeQuitOnOpen = 1


" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra' " search in project directory
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " ignore files in .gitignore


" Deoplete settings
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" NERD Commenter settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
