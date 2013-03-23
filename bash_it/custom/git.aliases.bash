#!/usr/bin/env bash

source "$BASH_IT/aliases/available/git.aliases.bash"

# more aliases
alias gm='git mergetool'
alias gsh='git stash'
alias gsp='git stash pop'
alias glr='git pull --rebase'
alias gll='git log --graph --pretty=oneline --abbrev-commit -n 10'

function git-help() {
  echo "Git Custom Aliases Usage"
  echo
  echo "  gcl   = git clone"
  echo "  g       = git"
  echo "  get     = git"
  echo "  ga      = git add"
  echo "  gall    = git add ."
  echo "  gst/gs  = git status"
  echo "  gss     = git status -s"
  echo "  gsh     = git stash"
  echo "  gsp     = git stash pop"
  echo "  gl      = git pull"
  echo "  glr     = git pull --rebase"
  echo "  gup     = git fetch && git rebase"
  echo "  gp      = git push"
  echo "  gd      = git diff | mate"
  echo "  gdv     = git diff -w \"$@\" | vim -R -"
  echo "  gc      = git commit -v"
  echo "  gca     = git commit -v -a"
  echo "  gci     = git commit --interactive"
  echo "  gb      = git branch"
  echo "  gba     = git branch -a"
  echo "  gcount  = git shortlog -sn"
  echo "  gcp     = git cherry-pick"
  echo "  gco     = git checkout"
  echo "  gexport = git git archive --format zip --output"
  echo "  gdel    = git branch -D"
  echo "  gpo     = git push origin"
  echo "  gm      = git mergetool"
  echo "  gmu     = git fetch origin -v; git fetch upstream -v; git merge upstream/master"
  echo "  gll     = git log --graph --pretty=oneline --abbrev-commit -n 10"
  echo
}
