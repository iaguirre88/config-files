" Install plugins the first time nvim is opened
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

  " syntaxis
  Plug 'morhetz/gruvbox'

  Plug 'leafgarland/typescript-vim'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'elixir-editors/vim-elixir'
  Plug 'gko/vim-coloresque'
  Plug 'pangloss/vim-javascript'
  Plug 'Yggdroot/indentLine'
  Plug 'rust-lang/rust.vim'
  Plug 'slim-template/vim-slim'
  Plug 'vim-ruby/vim-ruby'

  " autocomplete
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'tpope/vim-endwise'
  Plug 'slashmili/alchemist.vim'

  " nerdtree
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " nerd commenter
  Plug 'scrooloose/nerdcommenter'

  " CtrlPlugin
  Plug 'ctrlpvim/ctrlp.vim'

  " ALE async linter
  Plug 'w0rp/ale'

  " add vim-airline powerline
  Plug 'vim-airline/vim-airline'

  " git tools
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

  " change definition of word to support camelcase and underscore
  Plug 'chaoren/vim-wordmotion'

  " Run test in file
  Plug 'janko-m/vim-test'

call plug#end()
