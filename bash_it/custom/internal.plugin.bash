# XING internal - create remote for in xws-features branch tree
push_this_to_remote() {
  current_branch=`git branch | grep "*" | awk '{print $2}'`
  git push xws-features $current_branch
  git branch --set-upstream $current_branch xws-features/$current_branch
  }

#### history begin ####
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=10000
export HISTCONTROL=erasedups
shopt -s histappend
#### history end   ####
