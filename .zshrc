#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export HISTFILE=$ZSH/.zhistfile

[[ $OSTYPE == "linux"* ]] && compinit -d $ZSH/.zcompdump

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias l="ls -Al --group-directories-first"
[ $OSTYPE = darwin ] && alias l="ls-Al"
alias ll="ls -Aw 80"
alias q="exit"
alias c="cd"
alias untar="tar -xzvf"
alias gs="git status"
alias ga="git add"

export PATH=$HOME/bin:/usr/local/bin:$PATH

~/bin/springClean

if [ $(tput cols) -lt 70 ]; then
	alias l="ls -A --group-directories-first"
	echo small
fi
