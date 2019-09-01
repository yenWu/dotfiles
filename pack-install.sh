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
