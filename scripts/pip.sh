if ! command -v pip3 > /dev/null
then
    sudo apt install python3-pip -y
else
    echo "Neovim Already Installed."
fi
