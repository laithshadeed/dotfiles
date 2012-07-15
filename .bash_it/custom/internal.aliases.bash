#!/usr/bin/env bash

# compass shotcuts
alias cw='compass watch'
alias cc='compass compile --force'


if [ $(uname) = "Linux" ]; then
  alias work='cd ~/Documents/workspace'
  # projects
  export COMONEA="$HOME/Documents/workspace/deposit-solutions/comonea"
  alias com='cd $COMONEA'
  alias com-start='cd ${COMONEA}/comonea-shop-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.username=comoneaowner jetty:run'
  alias com-rfq="cd $COMONEA/comonea-rfq-webapp/ && mvn -Ddb_rfq.username=comoneaowner jetty:run"
  alias com-pro="cd $COMONEA/comonea-shop-webapp/ && mvn jetty:run"
  alias dkp="cd $COMONEA/../dkp-web"
  alias ftm="cd $COMONEA/../dkp-cms/trunk/src/main"
else
  # mac os specifc
  alias work='cd ~/workspace'
fi
