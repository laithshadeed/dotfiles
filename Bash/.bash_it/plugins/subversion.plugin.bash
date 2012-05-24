#!/bin/bash

rm-svn(){
  find $1 -name .svn -print0 | xargs -0 rm -rf
}

svn-add(){
	svn status | grep '^\?' | sed -e 's/? *//' | sed -e 's/ /\ /g' | xargs svn add
}

svn-diff() {
  svn diff "${@}" | colordiff
}
