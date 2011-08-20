#!/bin/bash

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias ll='ls -lA'       # Compact view, show hidden
alias la='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias work='cd ~/Documents/workspace'
alias pb='cd ~/Documents/workspace/planningboard'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
	alias ls="ls --color=always"
fi

alias c='clear'
alias k='clear'

alias edit="$EDITOR"
alias page="$PAGER"

alias q="exit"

alias irc="$IRC_CLIENT"

alias rb="ruby"

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/
alias piano="pianobar"

# start a simple server at port 8000 pointing to current directory
alias server="open http://localhost:8000/; python -m SimpleHTTPServer &"

alias ..='cd ..'        # Go up one directory
alias ...='cd ../..'    # Go up two directories
#alias -="cd -"       # Go back

# Shell History
alias h='history'

# Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Directory
alias	md='mkdir -p'
alias	rd=rmdir

function aliases-help() {
  echo "Generic Alias Usage"
  echo
  echo "  sl     = ls"
  echo "  ls     = ls -G"
  echo "  ll     = ls -AF"
  echo "  la     = ls -al"
  echo "  l      = ls -a"
  echo "  c/k    = clear"
  echo "  ..     = cd .."
  echo "  ...    = cd ../.."
#  echo "  -      = cd -"
  echo "  h      = history"
  echo "  md     = mkdir -p"
  echo "  rd     = rmdir"
  echo "  editor = $EDITOR"
  echo "  pager  = $PAGER"
  echo "  piano  = pianobar"
  echo "  server = start a python server with port 8000"
  echo "  q      = exit"
  echo "  irc    = $IRC_CLIENT"
  echo
}
