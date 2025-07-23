#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lAFh'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim


if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
fi
