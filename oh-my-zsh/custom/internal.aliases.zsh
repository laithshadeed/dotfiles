#!/usr/bin/env bash

alias q='exit'
alias k='clear'

alias sgrun='cd ~/workspace/wlw/wlw_styleguide/spec/dummy/ && rails s -p 3002'
# bundle
alias be='bundle exec'
alias bi='bundle install'
alias rwst="bundle exec rake web_service:test:all"
alias server="sudo python -m SimpleHTTPServer 80"

alias work='cd ~/workspace'
alias wlw='cd ~/workspace/wlw/wlw'
alias sg='cd ~/workspace/wlw/wlw_styleguide'
alias cr='cd ~/workspace/wlw/customer_report'
alias ac='cd ~/workspace/wlw/accounts'

if [ $(uname) = "Linux" ]; then
  # system
  alias vim='gvim'
  alias gitx='gitg'
else
  # mac os specifc
  # alias vim='mvim'
  alias gitg='gitx'
  # xws environment
  alias cdm='cd ~/workspace/xws'
  alias rwst='bundle exec rake web_service:test:all'
fi
