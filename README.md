Clone the repository and move into de folder.
```
git clone
cd config-files
```

## nvim
```
ln -s $(pwd)/nvim ~/.config/nvim
```
Open nvim and wait for the plugins to be installed.

## zsh
```
# Antigen plugin manager
git clone https://github.com/zsh-users/antigen.git ~/.antigen

ln -s $(pwd)/zsh ~/.config/zsh
cp zsh/zshrc.example ~/.zshrc
```

## tmux
```
ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf
```

