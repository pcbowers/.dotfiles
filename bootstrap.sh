#!/usr/bin/env bash

sudo apt-add-repository ppa:neovim-ppa/stable -y
sudo apt update -y && sudo apt upgrade -y

sudo apt install git curl fish neovim -y

[ ! "$SHELL" = "$(which fish)" ] && chsh -s $(which fish) && echo "Default Shell set to Fish. Run \`su - $USER\` to make your updates."

! command -v starship > /dev/null && curl -fsSL https://starship.rs/install.sh | bash

[ ! -d "$HOME/.asdf" ] && git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
mkdir -p ~/.config/fish/completions && cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

if ! command -v lsd > /dev/null; then
	curl -sLO https://github.com/Peltoche/lsd/releases/download/0.18.0/lsd_0.18.0_amd64.deb
	sudo apt install -y ./lsd_0.18.0_amd64.deb
	sudo rm lsd_0.18.0_amd64.deb
fi

if ! command -v nvim > /dev/null; then
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	nvim --headless +PlugInstall +qall
fi
