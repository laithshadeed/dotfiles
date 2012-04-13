#alias pb="cd ~/Documents/workspace/planningboard"
#alias com="cd ~/Documents/workspace/comonea"
#alias comapp="cd ~/Documents/workspace/comonea/b2c-webapp/src/main/webapp"
# internal
#lias jettys='cd ~/Documents/workspace/comonea/b2c-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.password= jetty:run'
# alias jettys='cd ~/Documents/workspace/comonea/b2c-webapp/ && MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M" mvn -Ddb.user=root-Ddb.user=root -Ddb.password= jetty:run'
#alias dkp='cd ~/Documents/workspace/dkp-web'

#
#
# Xing pandora sandbox syncronisation
#alias rsync='rsync -v -zar -p -C --exclude=.git* --exclude=htdocs/ --exclude=conf/settings* --exclude=tmp/ --exclude=gems --exclude ".tm_sync.config" -e "ssh -p 2222" . "vagrant@sandbox:sandbox/rails-app"'
