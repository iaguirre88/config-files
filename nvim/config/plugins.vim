set nocompatible

" Install plugins the first time nvim is opened
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

  " syntaxis
  Plug 'morhetz/gruvbox'
  Plug 'sheerun/vim-polyglot'

  " Misc
  Plug 'gko/vim-coloresque'
  Plug 'Yggdroot/indentLine'
  Plug 'kamykn/spelunker.vim'   " check spelling
  Plug 'webdevel/tabulous'      " add numbers in tabs
  Plug 'kshenoy/vim-signature'  " show visual marks
  Plug 'chaoren/vim-wordmotion' " change definition of word to support camelCase and underscore
  Plug 'jremmen/vim-ripgrep'    " ripgrep

  " autocomplete
  Plug 'tpope/vim-endwise'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'alvan/vim-closetag'

  " nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " nerd commenter
  Plug 'scrooloose/nerdcommenter'

  " CtrlPlugin
  Plug 'ctrlpvim/ctrlp.vim'

  " add vim-airline powerline
  Plug 'vim-airline/vim-airline'

  " git tools
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

  " Run test in file
  Plug 'janko-m/vim-test'

call plug#end()
