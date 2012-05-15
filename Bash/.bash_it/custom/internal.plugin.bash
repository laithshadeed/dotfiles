# XING internal - create remote for in xws-features branch tree
push_this_to_remote() {
  current_branch=`git branch | grep "*" | awk '{print $2}'`
  git push xws-features $current_branch
  git branch --set-upstream $current_branch xws-features/$current_branch
}


svndiff(){
  svn diff "${@}" | colordiff
}
