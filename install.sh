#!/usr/bin/env fish

# Create necessary directories
mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim
mkdir -p ~/.tmux

# Use *stow* as a dotfile manager

# Destory symbolic links
stow -v -t ~/.config/fish fish
stow -v -t ~/.config/nvim nvim
stow -v -t ~/.tmux .tmux

# Link oh-my-tmux config file
ln -s -f .tmux/.tmux.conf ~/.tmux.conf
ln -s -f .tmux/.tmux.conf.local ~/.tmux.conf.local
