" Input settings
inoremap jk <Esc>
set mouse=a

" Allow . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" Shift indentation
vnoremap < <gv
vnoremap > >gv

" Enable wildmenu
set wildmenu

" Persistent undo
set undofile
set undodir=/tmp/vim/undo

" Remember last location in file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

