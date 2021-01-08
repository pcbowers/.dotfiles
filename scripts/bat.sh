if ! command -v bat > /dev/null
then
    sudo apt install bat -y
    sudo ln -s /usr/bin/batcat /usr/bin/bat
else
    echo "Bat Already Installed."
fi
