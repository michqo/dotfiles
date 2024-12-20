#!/bin/bash

# Delete
rm -rf ~/.config/fish
rm -rf ~/.config/nvim
rm -rf ~/.config/lvim
rm -rf ~/.config/tmux
rm -rf ~/.bin
rm -rf ~/.config/code-flags.conf

# Create links
ln -sf ~/dotfiles/.config/fish/ ~/.config/fish
ln -sf ~/dotfiles/.config/nvim/ ~/.config/nvim
ln -sf ~/dotfiles/.config/lvim ~/.config/lvim
ln -sf ~/dotfiles/.config/tmux ~/.config/tmux
ln -sf ~/dotfiles/.bin/ ~/.bin
ln -sf ~/dotfiles/.config/code-flags.conf ~/.config/code-flags.conf
