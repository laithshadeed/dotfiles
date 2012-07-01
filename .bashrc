#!/usr/bin/env bash

# Load RVM, if you are using it (RubyVersionManager)
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Load NVM, if you are using it (NodeVersionManager)
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Add rvm gems and nginx to the path
export PATH=$PATH:/var/lib/gems/1.8/bin
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='cange'
echo "Bash is using the \"$BASH_IT_THEME\" theme"

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Load Bash It
source $BASH_IT/bash_it.sh
