svndiff(){
  svn diff "${@}" | colordiff
}
