#!/bin/bash

# Load RVM, if you are using it (RubyVersionManager)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load NVM, if you are using it (NodeVersionManager)
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# Add rvm gems and nginx to the path
export PATH=$PATH:/var/lib/gems/1.8/bin
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin
# Path to the bash it configuration
export BASH=$HOME/.bash_it
export BASH_THEME='cange'

# Load Bash It
source $BASH/bash_it.sh
