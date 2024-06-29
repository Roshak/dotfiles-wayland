#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

export PATH="~/.local/bin:$PATH"
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"

alias ls='exa --color=auto'
alias grep='grep --color=auto'

alias l='exa -lah --icons=auto --group-directories-first'
alias s='systemctl'
alias j='journalctl'
alias ..='cd ..'
alias ncdu='ncdu --color dark'

alias vim='nvim'
alias config='/usr/bin/git --git-dir=/home/gasta/.cfg/ --work-tree=/home/gasta'
alias yay="paru"
alias yays="paru -Sl | awk '{print \$2(\$4==\"\" ? \"\" : \" *\")}' | fzf --multi --preview 'paru -Si {1}' | cut -d \" \" -f 1 | xargs -ro paru -S"

alias c="cd ~/.config"
alias y="yazi"
