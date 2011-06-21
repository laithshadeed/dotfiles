#!/bin/bash

# Aliases
alias g='git'
alias ga='git add'
alias gall='git add .'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gci='git commit --interactive'
alias gcl='git clone'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gdv='git diff -w "$@" | vim -R -'
alias gl='git pull'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gp='git push'
alias gpo='git push origin'
alias gpp='git stash pop'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gsh='git stash'
alias gss='git status -s'
alias gst='git status'
alias gup='git fetch && git rebase'
#
# git flow
#
alias gff='git flow feature'

case $OSTYPE in
  linux*)
    alias gd='git diff | vim -R -'
    ;;
  darwin*)
    alias gd='git diff | mvim'
    ;;
  darwin*)
    alias gd='git diff'
    ;;
esac



function git-help() {
  echo "Git Custom Aliases Usage"
  echo
  echo "  g       = git"
  echo "  ga      = git add"
  echo "  gall	  = git add ."
  echo "  gb      = git branch"
  echo "  gba     = git branch -a"
  echo "  gc      = git commit -v"
  echo "  gca     = git commit -v -a"
  echo "  gci     = git commit --interactive"
  echo "  gcl     = git clone"
  echo "  gco     = git checkout"
  echo "  gcount  = git shortlog -sn"
  echo "  gcp     = git cherry-pick"
  echo "  gd      = git diff | mate"
  echo "  gdel    = git branch -D"
  echo "  gdv     = git diff -w \"$@\" | vim -R -"
  echo "  gexport = git git archive --format zip --output"
  echo "  gl      = git pull"
  echo "  gmu     = git fetch origin -v; git fetch upstream -v; git merge upstream/master"
  echo "  gpo     = git push origin"
  echo "  gp      = git push"
  echo "  gpp     = git stash pop"
  echo "  gll     = git log --graph --pretty=oneline --abbrev-commit"
  echo "  gsh     = git stash"
  echo "  gss     = git status -s"
  echo "  gst     = git status"
  echo "  gup     = git fetch && git rebase"
  echo
  echo "Git Flow Aliases"
  echo
  echo "  gff     = git flow feature"
}
