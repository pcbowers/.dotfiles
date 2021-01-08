if ! command -v zsh > /dev/null
then
    sudo apt install zsh -y
else
    echo "ZSH Already Installed."
fi

if [ "$SHELL" != "$(which zsh)" ]
then
    chsh -s $(which zsh) && echo "Default Shell set to ZSH. Run \`su - $USER\` to make your updates."
else
    echo "Default Shell already set to ZSH."
fi
