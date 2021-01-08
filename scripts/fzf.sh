if ! command -v fzf > /dev/null
then
    sudo apt install fzf -y
else
    echo "FZF Already Installed."
fi
