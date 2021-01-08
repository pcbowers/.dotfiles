if ! command -v gh > /dev/null
then
    curl -sLO https://github.com/cli/cli/releases/download/v1.2.1/gh_1.2.1_linux_amd64.deb
    sudo apt install -y ./gh_1.2.1_linux_amd64.deb
    sudo rm gh_1.2.1_linux_amd64.deb
else
    echo "Github Client Already Installed."
fi
