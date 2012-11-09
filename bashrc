
# Check for an interactive session
[ -z "$PS1" ] && return

eval `dircolors -b`
alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#Show all possib when ambigous (only one tab)
set show-all-if-ambiguous on

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#MAN COLORS
export LESS_TERMCAP_mb=$'\E[01;31m'    # début de blink
export LESS_TERMCAP_md=$'\E[01;31m'    # début de gras
export LESS_TERMCAP_me=$'\E[0m'        # fin
export LESS_TERMCAP_so=$'\E[01;44;33m' # début de la ligne d`état
export LESS_TERMCAP_se=$'\E[0m'        # fin
export LESS_TERMCAP_us=$'\E[01;32m'    # début de souligné
export LESS_TERMCAP_ue=$'\E[0m'        # fin


export PAGER=less
export LESS="-FRSX"
export EDITOR=vim

# Don’t clear the screen after quitting a manual pages
export MANPAGER="less -X"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

HISTTIMEFORMAT='%F %T '
export HISTTIMEFORMAT

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"


function md() {
  mkdir -p "$@" && cd "$@"
}

function f() {
    find . -name "$1"
}

function owncloud
{
  own_url="http://my.bmaron.net"
  own_usr="eMerzh"
  curl -u own_usr -T $1 "$own_url/remote.php/webdav/$1"
  xdg-open "$own_url?app=files&dir=$1"
}