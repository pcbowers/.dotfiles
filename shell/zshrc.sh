# ENABLE POWERLEVEL10K INSTANT PROMPT (MOST REMAIN AT TOP)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# EXPORTS
export BROWSER="/mnt/c/browser.exe"
export ANTIGEN_PATH="$HOME/.dotfiles"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export THEME="romkatv/powerlevel10k"
export EDITOR="nvim"

source $ANTIGEN_PATH/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle pip
antigen bundle git
antigen bundle fzf
antigen bundle colored-man-pages
antigen bundle node
antigen bundle npm
antigen bundle nvm
antigen bundle wd
antigen bundle z
antigen bundle colorize
antigen bundle fzf
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

antigen apply

source $HOME/.aliases
source $HOME/.functions

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# sudo service zerotier-one start > /dev/null # Start zerotier

