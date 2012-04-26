alias pb="cd ~/Documents/workspace/planningboard"
alias com="cd ~/Documents/workspace/deposit_solutions/comonea/"
alias comapp="cd ~/Documents/workspace/deposit_solutions/comonea/b2c-webapp/src/main/webapp"
# internal
alias jettys='cd ~/Documents/workspace/deposit_solutions/comonea/comonea-shop-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.password= jetty:run'
# dkp
alias dkp='cd ~/Documents/workspace/deposit_solutions/dkp-web'
alias ftm='cd ~/Documents/workspace/deposit_solutions/dkp-cms/trunk/src/main'
#
# Xing pandora sandbox syncronisation
alias rsync='rsync -v -zar -p -C --exclude=.git* --exclude=htdocs/ --exclude=conf/settings* --exclude=tmp/ --exclude=gems --exclude ".tm_sync.config" -e "ssh -p 2222" . "vagrant@sandbox:sandbox/rails-app"'
