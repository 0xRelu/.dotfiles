#!/bin/bash

# Remove links
stow -D nvim
stow -D lazygit
stow -D p10k
stow -D zsh

# remove antidote
rm -rf $HOME/.antidote
rm $HOME/.zsh_plugins.zsh
