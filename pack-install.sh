#!/bin/bash

# Env
DISTRO="$(lsb_release -si)"
RELEASE="$(lsb_release -sr)"

# Flag
## Only test on Ubuntu 18.04
## PK   = package
## MAN  = manager 
SUDO="sudo"
PKMAN="apt-get"
PKINSTALL="$PKMAN install -y"

PKS="stow neovim fish"

# Installation
$SUDO $PKINSTALL $PKS

# Vim plugin manager
# - vim-plug (https://github.com/junegunn/vim-plug)
RED='\033[0;31m'
NC='\033[0m'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo
echo -e "Type ${RED}:PlugInstall${NC} in NVIM to install plugin manager"
echo

#Github module
echo "Sync the module (oh-my-tmux"
git submodule init
git submodule status
git submodule update
