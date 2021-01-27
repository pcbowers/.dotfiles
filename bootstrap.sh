#!/usr/bin/env bash

sudo apt update && sudo apt upgrade

sudo apt install curl fish

chsh -s $(which fish) && echo "Default Shell set to Fish. Run \`su - $USER\` to make your updates."

curl -fsSL https://starship.rs/install.sh | bash
