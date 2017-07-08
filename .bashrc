#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias sgi="cd /home/sultanbaev/Dropbox/_Important/_003_sultanbaev.github.io/"
alias df="cd /home/sultanbaev/Dropbox/_Important/_dotfiles/"
alias sh="cd /home/sultanbaev/Dropbox/_Important/_001_shothub/"
alias ap="cd /home/sultanbaev/Dropbox/_Important/_arduinoproj/"

alias gi="git init"
alias ga="git add ."
alias gc="git commit -m "$1""
alias gp="git push -u origin master"
alias gr="git remote add origin https://github.com/sultanbaev/"$1".git"

alias fixrez="xrandr --output HDMI1 --mode 1680x1050"

alias shootdown="sudo teamviewer --daemon stop && shutdown"

PS1='\[\e[0;32m\]\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]>>>>>>>>>>>>>>>>>>>>\[\e[m\] \[\e[1;37m\]'

bash /home/sultanbaev/Dropbox/_Important/_dotfiles/scripts/colors.sh