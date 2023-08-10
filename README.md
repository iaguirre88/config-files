# Installation

Clone the repository and move into de folder.
```
git clone git@github.com:iaguirre88/config-files.git
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
# Copy settings files
ln -s $(pwd)/tmux.conf ~/.tmux.conf
```

## Other Tools
### Starship
```
curl -fsSL https://starship.rs/install.sh | bash
```

## Updating
### Update tmux plugins
```
~/.tmux/plugins/tpm/bin/update_plugins all
```

More info about tmux plugins [here](https://github.com/tmux-plugins/tpm)
