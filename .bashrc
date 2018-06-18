# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PATH += custom programs, python packages, system things
PATH=~/bin:$PATH
PATH=$PATH:~/.local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
export PATH

# Shell prompt
#PS1="\n$ "
PS1="\$(bashprompt)"

# Autocomplete
[ -f /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion

# fzf
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
export FZF_DEFAULT_COMMAND='rg -g ""'

# hashcat
[ -f /usr/share/doc/hashcat/extra/tab_completion/hashcat.sh ] && source /usr/share/doc/hashcat/extra/tab_completion/hashcat.sh

# Append to the history file, don't overwrite it
shopt -s histappend

# Enable fancy globbing
shopt -s globstar

# Navigation aliases
alias pu="pushd"
alias po="popd"
alias dirs="dirs -v"

# Other aliases
alias ls="ls --color=auto"
alias sl="ls"
alias gerp="grep"
alias mtr='mtr -o "LSDR WBAV"'

# Allow sudo to use the above aliases
alias sudo='sudo '

# Functions
[ -f ~/.bash-functions ] && source ~/.bash-functions

# Set default text editor for Git and other programs
export EDITOR=vim
export VISUAL=vim

# Host-specific config
HOST=`hostname`
[ -f ~/.bashrc-${HOST} ] && source ~/.bashrc-${HOST}
