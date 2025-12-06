#!/bin/bash
#
# stow dotfiles
stow zsh
stow p10k
stow nvim
stow lazygit
stow ideavim

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
chsh -s $(which zsh) $USER

# install antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${HOME}/.antidote
