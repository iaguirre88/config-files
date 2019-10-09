" Install plugins the first time nvim is opened
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

  " syntaxis
  Plug 'morhetz/gruvbox'

  " JS
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'dsawardekar/ember.vim'

  " Elixir
  Plug 'elixir-editors/vim-elixir'

  " Ruby
  Plug 'slim-template/vim-slim'
  Plug 'vim-ruby/vim-ruby'

  " Rust
  Plug 'rust-lang/rust.vim'

  " Misc
  Plug 'gko/vim-coloresque'
  Plug 'Yggdroot/indentLine'

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
