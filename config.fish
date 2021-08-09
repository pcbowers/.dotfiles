set fish_greeting

source ~/.asdf/asdf.fish
starship init fish | source

abbr -a -g cat "bat"
abbr -a -g vi "vim"
abbr -a -g nv "nvim"
abbr -a -g n "nvim"
abbr -a -g nvm "nvim"
abbr -a -g python "python3"
abbr -a -g pip "pip3"
abbr -a -g e "explorer.exe"
abbr -a -g ls "lsd -a"
abbr -a -g ifconfig "ip addr show"
abbr -a -g c "code"
abbr -a -g dropcache "sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
abbr -a -g sf "source $HOME/.config/fish/config.fish"
abbr -a -g win "cd /mnt/c/Users/pcbow"
abbr -a -g gs "git status"
abbr -a -g gc "git commit -m"
abbr -a -g ga "git add -A"
abbr -a -g gp "git pull"
abbr -a -g ops "eval (op signin my)"

set -U fish_user_paths ~/.local/bin $fish_user_paths

function fish_user_key_bindings
  fish_vi_key_bindings
end
