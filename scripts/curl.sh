if ! command -v curl > /dev/null
then
    sudo apt install curl -y
else
    echo "Curl Already Installed."
fi
