#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|
#                           

# Path to your oh-my-zsh installation.
export ZSH="/home/tristan/.oh-my-zsh"

ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folderH

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias screenset="xrandr --output DP-2-2 --auto && xrandr --output DP-2-2 --left-of eDP-1 && feh --bg-scale ~/Pictures/kurzback.png"
alias screen1="xrandr --output DP-1 --auto && xrandr --output DP-1 --left-of eDP-1 "
alias titan="sshpass -p Lw74p6jUa ssh s3799264@titan.csit.rmit.edu.au"
alias relpulse="pulseaudio -k && sleep 1 && pulseaudio --start"
alias relpoly="pkill -USR1 polybar"
alias relx="sudo pkill -USR1 X"
alias confvim="vim ~/dotfiles/.vimrc"
alias confzsh="vim ~/dotfiles/.zshrc"
alias confi3="vim ~/dotfiles/.config/i3/config"
alias confcomp="vim ~/dotfiles/.config/compton.conf"
alias confpoly="vim ~/dotfiles/.config/polybar/config"
alias confst="vim ~/workspace/builds/lst/config.h"

neofetch

export PATH=$PATH:/usr/local/sbin/
export PATH=$PATH:/home/tristan/.vim/bundle/vim-live-latex-preview/bin
export PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

