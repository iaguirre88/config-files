" Install plugins the first time nvim is opened
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
  Plug 'joshdick/onedark.vim'

  " autocomplete
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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

  " change definition of word to support camelcase and underscore
  Plug 'chaoren/vim-wordmotion'

call plug#end()
