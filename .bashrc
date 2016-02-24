# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell prompt
PS1="\n\u@\[\e[1;$((31+ $(hostname | cksum | cut -c1-3) % 6))m\]\h\[\e[0m\]:\w\n$ "

# Vi editing mode
set -o vi

# Append to the history file, don't overwrite it
shopt -s histappend

# Navigation aliases
alias pu="pushd"
alias po="popd"
alias dirs="dirs -v"

# Other aliases
alias ls="ls --color=auto"
alias vi='vim'
alias view='vim -R'
alias sl="ls"
alias gerp="grep"
alias mtr='mtr -o "LSDR WBAV"'
alias phpvld='php -d vld.active=1 -d vld.execute=0'
alias ag='ag --silent'

# Functions
[ -f ~/.bash-functions ] && source ~/.bash-functions

# Allow sudo to use the above aliases
alias sudo='sudo '

# PATH += custom programs, python packages, system things
PATH=~/bin:$PATH
PATH=$PATH:~/.local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
export PATH

# Git, yaourt
export EDITOR=vim
export VISUAL=vim

# Host-specific config
HOST=`hostname`
[ -f ~/.bashrc-${HOST} ] && source ~/.bashrc-${HOST}

