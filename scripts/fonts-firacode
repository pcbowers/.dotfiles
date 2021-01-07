if [ ! -f "$HOME/.local/share/fonts/Fira Code Regular Nerd Font Complete Mono.otf" ]
then
    sudo apt install unzip -y
    curl -sLO https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
    mkdir -p $HOME/.local/share/fonts
    unzip -q FiraCode.zip -d $HOME/.local/share/fonts
    find $HOME/.local/share/fonts \( -name "Fira*" -o -name "Fura*" \) -a -not -name "Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.otf" -type f -exec rm -f {} +
    rm FiraCode.zip
else
    echo "FiraCode Nerd Font Already Installed."
fi
