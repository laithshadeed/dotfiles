#!/usr/bin/env bash

alias q='exit'
alias k='clear'
# compass shotcuts
alias cw='compass watch --time --trace'
alias ccp='compass compile --force -e production -s compressed'
alias cc='compass compile --force'
# bundle
alias be='bundle exec'
alias bi='bundle install'
alias rwst="bundle exec rake web_service:test:all"
alias server="sudo python -m SimpleHTTPServer 80"
alias rm-orig='find . -type f -name "*.orig" -exec rm -f {} \;'

if [ $(uname) = "Linux" ]; then
  alias work='cd ~/Documents/workspace'
  # projects
  DEPOSIT_SOLUTIONS="~/Documents/workspace/deposit-solutions"
  COMONEA_B2C="$DEPOSIT_SOLUTIONS/ds-comonea-b2c"
  COMONEA_PRO="$DEPOSIT_SOLUTIONS/ds-comonea-pro"
  alias com_b2c="cd $COMONEA_B2C"
  alias com_pro="cd $COMONEA_PRO"
  # alias com-start='cd ${COMONEA}/comonea-shop-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.username=comoneaowner jetty:run'
  alias com-b2c="cd $COMONEA_B2C/comonea-b2c-shop-webapp/ && mvn jetty:run"
  alias com-pro="cd $COMONEA_PRO/cp-customer-webapp && mvn -Ddb.username=comonea_pro_o jetty:run"
  alias cp-cli="java -Ddb.username=comonea_pro_o -jar $COMONEA_PRO/cp-cli/target/cp-cli-*-jar-with-dependencies.jar"
  alias ds="cd $DEPOSIT_SOLUTIONS/ds-websites/"
  alias dkp="cd $DEPOSIT_SOLUTIONS/ds-websites/dkp-web"
  # system
  alias vim='gvim'
  alias gitx='gitg'
else
  # mac os specifc
  alias work='cd ~/workspace'
  # system
  alias vim='mvim'
  alias gitg='gitx'
  # xws environment
  alias cdm='cd ~/workspace/xws'
  alias cdi='cd ~/workspace/xws/public/img/xing/xe/web_service'
  alias xws='cd ~/workspace/xws/engines/web_service'
  alias xws-i18n='bundle exec rake text_resources:import:section SECTION=xws'
  alias xync='xws && xing sandbox sync'
  alias rwst='bundle exec rake web_service:test:all'
  alias rjst='phantomjs ~/workspace/xws/public/js/xe/web_service/test/qunit/addons/phantomjs/runner.js '
  alias ccp='xws && compass compile --force -e production -s compressed'
  alias cc='xws && compass compile --force'
  alias cw='xws && compass watch --time --trace'
fi
