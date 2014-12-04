# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Shell prompt
PS1="\n\u@\[\e[1;$((31+ $(hostname | cksum | cut -c1-3) % 6))m\]\h\[\e[0m\]:\w\n$ "

#Vi editing mode
set -o vi

# append to the history file, don't overwrite it
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
function apgsql {
        apg -a 1 -n 1 -m 20 -E \'\"\`\\
}
#allow sudo to use the above aliases
alias sudo='sudo '

#path += custom programs, python packages, system things
PATH=~/bin:$PATH
PATH=$PATH:~/.local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
export PATH

#git, yaourt
export EDITOR=vim
export VISUAL=vim

#Host-specific config
HOST=`hostname`
[ -f ~/.bashrc-${HOST} ] && source ~/.bashrc-${HOST}

