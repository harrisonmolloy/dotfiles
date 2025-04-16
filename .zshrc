## Paths
PATH="/opt/homebrew/bin:$PATH"
fpath+=("$(brew --prefix)/share/zsh/site-functions")

## Set terminal title on shell prompt
function set-title {
    echo -ne "\e]2;$1\a"
}

precmd() {
    set-title "Zsh - ${PWD##*/}"
}

export CLICOLOR=1

## git aliases
alias g="git"
alias ginit="git init ."
alias gadd="git add --all"
alias gc="git commit -v -a -m"
alias gs="git status"
alias gp="git push"

## other aliases
alias clean="make clean"
alias run="make run"

alias l="ls -1"
alias ls="ls -1hF"
alias la="ls -A"
alias ll="la -l"

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cdesk="cd ~/Desktop"
alias cdev="cd ~/Developer"
alias cdoc="cd ~/Documents"
alias chome="cd ~"
alias clr="clear"

## neovim setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=nvim
alias edit="nvim"
alias v="vim"
alias nv="nvim"
alias e="nvim"

## vi mode
# set -o vi

## fzf setup
source <(fzf --zsh)

## Pure prompt setup
autoload -U promptinit; promptinit
prompt pure
PURE_PROMPT_SYMBOL=→

## zoxide setup
eval "$(zoxide init zsh)"
alias cd="z"

## eza setup
alias ls="eza"
alias lt="eza -T -L 2"
alias lag="eza -1l --git -a --no-time --no-permissions --no-user --no-filesize --group-directories-first"
alias lt="eza -T -L 2 -1l --git --no-time --no-permissions --no-user --no-filesize --group-directories-first"
alias lg="eza -1l --git --no-time --no-permissions --no-user --no-filesize --group-directories-first"
