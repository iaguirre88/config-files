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

" Remember last location in file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Toggle between dark and light color scheme
:command! SchemeToggle :call SchemeToggle()
function! SchemeToggle()
    if &background == "dark"
        set background=light
    else
	set background=dark
    endif
endfunction
