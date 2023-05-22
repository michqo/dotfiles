#!/bin/bash

# Delete
rm -rf ~/.config/fish
rm -rf ~/.config/nvim
rm -rf ~/.config/lvim
rm -rf ~/.tmux.conf
rm -rf ~/.bin

# Create links
ln -sf ~/dotfiles/.config/fish/ ~/.config/fish
ln -sf ~/dotfiles/.config/nvim/ ~/.config/nvim
ln -sf ~/dotfiles/.config/lvim ~/.config/lvim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.bin/ ~/.bin
