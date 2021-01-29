set fish_greeting

source ~/.asdf/asdf.fish
starship init fish | source

abbr -a -g cat bat
abbr -a -g vi nvim
abbr -a -g v nvim
abbr -a -g nv nvim
abbr -a -g n nvim
abbr -a -g vim nvim
abbr -a -g python python3
abbr -a -g pip pip3
abbr -a -g e explorer.exe
abbr -a -g ls lsd
abbr -a -g ifconfig ip addr show
abbr -a -g c code
abbr -a -g dropcache "sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
abbr -a -g sf source $HOME/.config/fish/config.fish
abbr -a -g win cd /mnt/c/Users/pcbow
