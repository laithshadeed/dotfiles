#!/usr/bin/env bash

alias q='exit'
alias k='clear'

alias sgrun='cd ~/workspace/wlw/wlw_styleguide/spec/dummy/ && rails s -p 3002'
# bundle
alias be='bundle exec'
alias bi='bundle install'
alias rwst="bundle exec rake web_service:test:all"
alias server="sudo python -m SimpleHTTPServer 80"

alias accounts='cd ~/workspace/wlw/accounts'
alias cr='cd ~/workspace/wlw/customer_report'
alias lyc='cd ~/workspace/wlw/lyc'
alias orders='cd ~/workspace/wlw/orders'
alias products='cd ~/workspace/wlw/products'
alias sg='cd ~/workspace/wlw/wlw_styleguide'
alias statistics='cd ~/workspace/wlw/statistics'
alias user='cd ~/workspace/wlw/user'
alias wlw='cd ~/workspace/wlw/wlw'
alias work='cd ~/workspace'

if [ $(uname) = "Linux" ]; then
  # system
  alias vim='gvim'
  alias gitx='gitg'
else
  # mac os specifc
  alias vim='mvim'
  alias gitg='gitx'
fi
