#!/usr/bin/env fish

# Use *stow* as a dotfile manager

# Destory symbolic links
stow -v -D -t ~/.config/fish fish
stow -v -D -t ~/.config/nvim nvim
stow -v -D -t ~/.tmux .tmux

# Unlink oh-my-tmux config file
unlink ~/.tmux.conf
unlink ~/.tmux.conf.local
