PROMPT=""
RPROMPT="%~"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# git aliases
alias ginit="git init ."
alias gadd="git add ."
alias gc="git commit -m 'Initial Commit'"

# other aliases
alias clean="make clean"
alias run="make run"

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ls="ls -F"
alias ll="ls -lah"

alias cdesk="cd ~/Desktop"
alias cdoc="cd ~/Deocuments"
alias cdoc="cd ~/Deocuments"

alias clr="clear"

path+=('/opt/homebrew/bin/brew')
export PATH
