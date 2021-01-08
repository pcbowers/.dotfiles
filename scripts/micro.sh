if ! command -v micro > /dev/null
then
    curl https://getmic.ro | bash
    sudo mv micro /usr/bin
else
    echo "Micro Already Installed."
fi
