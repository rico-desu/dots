#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines or lines starting with space
# in the history. See bash(1) for more options
HISTCONTROL=ignoreboth

# For setting history length. see HISTSIZE and
# HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if
# necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias dots='git --git-dir="$HOME/.dots/" --work-tree="$HOME"'
alias git='TZ=UTC git'

# Basic environment variables
export PS1='[\u@\h \W]\$ '
export MANPAGER='vim -MRn +MANPAGER - '
export EDITOR='nvim'

# If on a pseudotty, start Starship
[[ "$TERM" != "linux" ]] && eval -- "$($HOME/.cargo/bin/starship init bash --print-full-init)"
