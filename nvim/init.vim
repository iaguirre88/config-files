if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" syntaxis
Plug 'leafgarland/typescript-vim'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'gko/vim-coloresque'
Plug 'pangloss/vim-javascript'

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" nerd commenter
Plug 'scrooloose/nerdcommenter'

" add CtrlPlugin
Plug 'ctrlpvim/ctrlp.vim'

" add ALE async linter
Plug 'w0rp/ale'

" add vim-airline powerline
Plug 'vim-airline/vim-airline'

" git tools
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" colorscheme
Plug 'tomasiser/vim-code-dark'

call plug#end()


"some stuff to get the mouse going in term
" TODO

" Map ESC key to JK
:inoremap jk <Esc>

" Disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Allow . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" Shift indentation
:vnoremap < <gv
:vnoremap > >gv

" Enable wildmenu
set wildmenu

" Syntax and highlighting
syntax enable
colorscheme codedark
let g:airline_theme = 'codedark'
set cursorline
" hi CursorLine cterm=NONE ctermbg=gray ctermfg=black

" Set line numbers
set number
set relativenumber
map <C-n> :set number! relativenumber!<CR>
" hi LineNr ctermbg=NONE ctermfg=gray
" hi CursorLineNr ctermbg=Black

" ---------------
" PLUGIN SETTINGS
" ---------------
" NERDTree settings
map <C-\> :NERDTreeToggle<CR>

" Open if starting vim with no arguments
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree when a file is opened
let NERDTreeQuitOnOpen = 1

" Close vim if the only window left open is NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


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
