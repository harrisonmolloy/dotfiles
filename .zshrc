PATH="/opt/homebrew/bin:$PATH"
fpath+=("$(brew --prefix)/share/zsh/site-functions")

function set-title {
    echo -ne "\e]2;$1\a"
}

# Example: Set terminal title on shell prompt
precmd() {
    set-title "Zsh - ${PWD##*/}"
}

export CLICOLOR=1

# NEWLINE=$'\n'
# PROMPT="${NEWLINE}%~${NEWLINE}→ "

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=nvim
alias edit="nvim"
alias v="vim"
alias nv="nvim"
alias e="nvim"

# vi mode
set -o vi

# git aliases
alias g="git"
alias ginit="git init ."
alias gadd="git add --all"
alias gc="git commit -v -a -m"
alias gs="git status"
alias gp="git push"

# other aliases
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
source <(fzf --zsh)

# Pure prompt.
autoload -U promptinit; promptinit
prompt pure
PURE_PROMPT_SYMBOL=→

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"

# eza
alias ls="eza"
alias lt="eza -T -L 2"
alias lag="eza -1l --git -a --no-time --no-permissions --no-user --no-filesize --group-directories-first"
alias lt="eza -T -L 2 -1l --git --no-time --no-permissions --no-user --no-filesize --group-directories-first"
alias lg="eza -1l --git --no-time --no-permissions --no-user --no-filesize --group-directories-first"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# pnpm
export PNPM_HOME="/Users/harri/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
