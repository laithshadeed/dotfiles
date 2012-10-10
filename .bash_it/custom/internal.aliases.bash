#!/usr/bin/env bash

# compass shotcuts
alias cw='compass watch'
alias cc='compass compile --force'
# bundle
alias be='bundle exec'
alias bi='bundle install'

if [ $(uname) = "Linux" ]; then
  alias work='cd ~/Documents/workspace'
  # projects
  export COMONEA="$HOME/Documents/workspace/deposit-solutions/comonea"
  alias com='cd $COMONEA'
  alias com-start='cd ${COMONEA}/comonea-shop-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.username=comoneaowner jetty:run'
  alias com-rfq="cd $COMONEA/comonea-rfq-webapp/ && mvn -Ddb_rfq.username=comoneaowner jetty:run"
  alias com-pro="cd $COMONEA/comonea-shop-webapp/ && mvn jetty:run"
  alias ds='cd $COMONEA/../ds-websites/'
  alias dkp='cd $COMONEA/../ds-websites/dkp-webr'
  alias ftm='cd $COMONEA/../dkp-cms/trunk/src/main'
else
  # mac os specifc
  alias work='cd ~/workspace'
  alias cdm='cd ~/workspace/rails-app'
  alias xws='cd ~/workspace/rails-app/engines/web_service'
  alias xws-i18n='bundle exec rake text_resources:import:section SECTION=xws'
  alias xync='xws && xing sandbox sync'
  alias rjst='phantomjs ~/workspace/rails-app/public/js/xe/web_service/test/qunit/addons/phantomjs/runner.js '
fi
