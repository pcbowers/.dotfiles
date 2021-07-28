#!/usr/bin/env bash

sudo apt update -y && sudo apt upgrade -y

sudo apt install git curl unzip python3-pip fish httpie -y

if [ $SHELL != "$(which fish)" ]; then
  chsh -s $(which fish)
fi

if [ ! -d "$HOME/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
  mkdir -p ~/.config/fish/completions && cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
  source $HOME/.asdf/asdf.sh
fi

if ! command -v node > /dev/null; then
  asdf plugin add nodejs
  bash -c '${ASDF_DATA_DIR:=$HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring}'
  asdf install nodejs lts
  asdf global nodejs $(asdf list nodejs | head -n 1)
fi

if ! command -v op > /dev/null; then
  curl -sLO https://cache.agilebits.com/dist/1P/op/pkg/v1.11.2/op_linux_amd64_v1.11.2.zip
  unzip op_linux_amd64_v1.11.2.zip
  sudo mv op /usr/bin
  sudo rm op_linux_amd64_v1.11.2.zip op.sig
fi

# if ! command -v java > /dev/null; then
#   asdf plugin add java
#   asdf install java adoptopenjdk-11.0.10+9
#   asdf global java $(asdf list java | head -n 1)
# fi

if ! command -v bat > /dev/null; then
  asdf plugin add bat
  asdf install bat latest
  asdf global bat $(asdf list bat | head -n 1)
fi

if ! command -v starship > /dev/null; then
  asdf plugin add starship
  asdf install starship latest
  asdf global starship $(asdf list starship | head -n 1)
fi

if ! command -v lsd > /dev/null; then
  curl -sLO https://github.com/Peltoche/lsd/releases/download/0.18.0/lsd_0.18.0_amd64.deb
  sudo apt install -y ./lsd_0.18.0_amd64.deb
  sudo rm lsd_0.18.0_amd64.deb
fi

if ! command -v nvim > /dev/null; then
  asdf plugin add neovim
  asdf install neovim latest
  asdf global neovim $(asdf list neovim | head -n 1)
fi
