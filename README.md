# LA's config files.

> You might also be interested in my [NixOS config](https://github.com/lxjv/nixos) (link currently broken)

## Programs

- Shell: zsh (with tmux)
- Editors: Vim, Neovim

> I'll add more programs as i configure them

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

2. Clone this repo and tell stow to initialise it
```sh
git clone https://github.com/lxjv/dotfiles .dotfiles
cd .dotfiles
stow .
```

3. Profit!
