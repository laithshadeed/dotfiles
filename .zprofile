if [ $(uname) = "Linux" ]; then
  /usr/bin/udisks --mount /dev/sdb1
  /usr/bin/udisks --mount /dev/sdb2
  /usr/bin/udisks --mount /dev/sdb3
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
