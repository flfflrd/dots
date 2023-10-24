#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="bira"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd-mm-yyyy"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in $ZSH/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

### USER CONFIG ###

bindkey -v

# clean up home dir
compinit -d $ZSH/.zcompdump

export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

export ZSH_COMPDUMP=$XDG_CACHE_HOME/zcompdump
export HISTFILE=$XDG_CACHE_HOME/zsh_history

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:$HOME/bin:/usr/local/bin
export PATH=$PATH:$XDG_DATA_HOME/dwmblocks

# Preferred editor for local and remote sessions
export EDITOR='vim'
export TERM=xterm-256color

# For a full list of active aliases, run `alias`.
alias q="exit"
alias dls="cd ~/dls"
alias dox="cd ~/dox"
alias pix="cd ~/pix"
alias uni="cd ~/uni"

alias gs="git status"
alias gaa="git add ."

alias l="ls -AlXh --group-directories-first"
alias L="ls -AlhS"
alias D="du -ahS"
alias locate="sudo find / 2>/dev/null | grep "
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"

alias sozsh="source ~/.zshrc"
alias cozsh="vim ~/dots/.zshrc"
alias covim="vim ~/dots/.vimrc"
alias coxin="vim ~/dots/.xinitrc" # lol coxin

function c {
    builtin cd "$@" && l
}

c
