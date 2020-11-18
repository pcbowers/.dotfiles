# Dotfiles

> Personal dotfiles configuration for Zsh, Git, Micro, and more to rapidly bootstrap a new system.

## Components

- Installations
  - Bat
  - Colossal-cave-adventure
  - fonts-firacode (does not install, only places it in the .fonts directory)
  - fzf
  - g++
  - gcc
  - gh
  - lsd
  - micro
  - nvm
  - trash-cli
  - xdg-utils
  - zerotier-cli
  - zsh
- Configurations
  - ssh
  - p10k
  - micro
  - nvm default-packages
- Shell
  - zshrc (with aliases and functions)
  - bashrc (with aliases and functions)

## Usage

_Prerequisites: python, git, zsh_

### Installation

```sh
git clone https://github.com/pcbowers/dotfiles.git .dotfiles --recursive
cd .dotfiles
./install
```

## Future/TODO

- May want to replace nvm with asdf
- May want to add some zerotier setup
- May want to add checks for aliases depending on shell
- May want to add checks for commands based on environment (wsl vs linux)
- May want to add links to documentation
- May want to add more descriptions to documentation components
