#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -la'
alias ll='ls -l'
alias ff='fastfetch'
alias nf='neofetch'
alias c='clear'
alias cl='clear && ls'
alias vim='nvim'
alias grep='grep --color=auto'
alias gl='git log -n 10 --oneline --graph --all'
PS1='[\u@\h \W]\$ '
export PATH=$PATH:$HOME/go/bin
