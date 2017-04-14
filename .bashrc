# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell prompt
PS1="\n\u@\[\e[1;$((31+ $(hostname | cksum | cut -c1-3) % 6))m\]\h\[\e[0m\]:\w\n$ "

# Append to the history file, don't overwrite it
shopt -s histappend

# Navigation aliases
alias pu="pushd"
alias po="popd"
alias dirs="dirs -v"

# Other aliases
alias ls="ls --color=auto"
alias sl="ls"
alias gerp="grep"
alias mtr='mtr -o "LSDR WBAV"'
alias phpvld='php -d vld.active=1 -d vld.execute=0'
alias ag='ag --silent'

# Allow sudo to use the above aliases
alias sudo='sudo '

# Functions
[ -f ~/.bash-functions ] && source ~/.bash-functions

# PATH += custom programs, python packages, system things
PATH=~/bin:$PATH
PATH=$PATH:~/.local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
export PATH

# Set default text editor for Git and other programs
export EDITOR=vim
export VISUAL=vim

# Host-specific config
HOST=`hostname`
[ -f ~/.bashrc-${HOST} ] && source ~/.bashrc-${HOST}
