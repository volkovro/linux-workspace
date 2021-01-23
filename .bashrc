# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

# User specific environment
#if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
#then
#    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
#fi
#export PATH

# Base16 Shell
COLOR="$HOME/.config/base16-shell/scripts/base16-material.sh"
$COLOR

PATH="$PATH:/usr/local/go/bin"

BASE16_SHELL="$HOME/.config/base16-shell/"

[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
	eval "$("$BASE16_SHELL/profile_helper.sh")"



PS1='\[\033[1;90m\]{\[\033[4;96m\]\u\[\033[00m\]@\[\033[4;96m\]\W\[\033[1;90m\]}\[\033[91m\]#\[\033[00m\] '

alias vi="vim"
#alias ls="ls -F --color=yes"
