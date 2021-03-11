" CoC extensions
let g:coc_global_extensions =
  \ ['coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-tslint-plugin', 'coc-eslint', 'coc-prettier', 'coc-rls']
set hidden
set nobackup
set nowritebackup
set signcolumn=yes


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd :split<CR><Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


" NERDTree settings
map <C-\> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 60

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
else
  :echo 'Consider installing ripgrep'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
endif


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
