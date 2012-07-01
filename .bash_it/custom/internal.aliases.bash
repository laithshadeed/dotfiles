alias pb="cd ~/Documents/workspace/planningboard"

# internal
# alias jettys="cd ~/Documents/workspace/deposit-solutions/comonea/comonea-shop-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.password= jetty:run"
export COMONEA="${HOME}/Documents/workspace/deposit-solutions/comonea"
alias com='cd $COMONEA'
alias com-start='cd ${COMONEA}/comonea-shop-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.username=comoneaowner jetty:run'
alias com-rfq="cd $COMONEA/comonea-rfq-webapp/ && mvn -Ddb_rfq.username=comoneaowner jetty:run"
alias com-pro="cd $COMONEA/comonea-shop-webapp/ && mvn jetty:run"
# dkp
alias dkp="cd ${COMONEA}/../dkp-web"
alias ftm="cd ${COMONEA}/../dkp-cms/trunk/src/main"
#
# Xing pandora sandbox syncronisation
alias rsync='rsync -v -zar -p -C --exclude=.git* --exclude=htdocs/ --exclude=conf/settings* --exclude=tmp/ --exclude=gems --exclude ".tm_sync.config" -e "ssh -p 2222" . "vagrant@sandbox:sandbox/rails-app"'
