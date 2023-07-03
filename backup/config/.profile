# $OpenBSD: dot.profile,v 1.8 2022/08/10 07:40:37 tb Exp $
#
# sh/ksh initialization

export ENV=$HOME/.kshrc
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/.local/bin:$HOME/git/bin
export PATH HOME TERM
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='ed -p*'
export BROWSER=w3m
export RTV_EDITOR=$EDITOR
export RTV_BROWSER=$BROWSER
export LESSEDIT='%E %f'
