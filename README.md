# LA's config files.

> That ain't a config file, THIS is a config file

## Programs
- Terminal: Alacritty
- Shells: zsh, fish
  - Prompt: Starship
  - Multiplexer: tmux
- Editors:
  - [Neovim](https://github.com/lxjv/dotfiles/tree/main/.config/nvim) ([x](https://neovim.io))
  - [Vim](https://github.com/lxjv/dotfiles/tree/main/.vimrc)
  - Helix
  - (Doom) Emacs

## Installation

I use GNU Stow to install my dotfiles. To use it:

1. Install Stow
```sh
# Arch Linux (btw)
sudo pacman -Syu stow

# NixOS
nix-shell -p stow

# MacOS
brew install stow
```

2. Clone this repo and use stow to symlink everything
```sh
git clone https://github.com/lxjv/dotfiles .dotfiles
cd .dotfiles
stow .
```

3. Profit!
