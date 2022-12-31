#!/bin/bash

# Delete
rm ~/.config/fish
rm ~/.config/nvim
rm ~/.config/lvim
rm ~/.tmux.conf
rm ~/.bin

# Create links
ln -sf ~/dotfiles/.config/fish/ ~/.config/fish
ln -sf ~/dotfiles/.config/nvim/ ~/.config/nvim
ln -sf ~/dotfiles/.config/lvim ~/.config/lvim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.bin/ ~/.bin
