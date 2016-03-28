#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias sgi="cd /home/sultanbaev/Dropbox/_Important/_003_sultanbaev.github.io/"
alias df="cd /home/sultanbaev/Dropbox/_Important/_dotfiles/"

alias gi="git init"
alias ga="git add ."
alias gc="git commit -m "$1""
alias gp="git push -u origin master"
alias gr="git remote add origin https://github.com/sultanbaev/"$1".git"

PS1='\[\e[0;32m\]\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]>>>>>>>>>>>>>>>>>>>>\[\e[m\] \[\e[1;37m\]'

#if [ -f /usr/bin/screenfetch ]; then screenfetch; fi
#if [ -f /usr/bin/ponysay ]; then ponysay -q; fi