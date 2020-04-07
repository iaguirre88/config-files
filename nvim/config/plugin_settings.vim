" CoC extensions
let g:coc_global_extensions =
  \ ['coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver']
set hidden
set nobackup
set nowritebackup
set signcolumn=yes

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> gd :split<CR><Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> f :call CocAction('format')<CR>


" NERDTree settings
map <C-\> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 60

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra' " search in project directory
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " ignore files in .gitignore


" NERD Commenter settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" Save hooks
let g:rustfmt_autosave = 1

" Spellcheck
let g:enable_spelunker_vim = 1
let g:spelunker_check_type = 2

" Tabulous
let tabulousLabelNameTruncate = 0
