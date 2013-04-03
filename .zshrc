# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cange"
echo "Now using zsh theme: \"$ZSH_THEME\""

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#
# Customize to your needs...
plugins=(brew git git-extra history node npm rvm)

source $ZSH/oh-my-zsh.sh

# Load RVM, if you are using it (RubyVersionManager)
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Load NVM, if you are using it (NodeVersionManager)
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"
nvm use 0.8

# Add rvm gems and nginx to the path
export PATH=$PATH:/var/lib/gems/1.8/bin
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Set the path nginx
export NGINX_PATH='/opt/nginx'

if [ $(uname) = "Linux" ]; then
  export PATH=$PATH:~/.nvm/v0.8.8/bin
  export PATH=$PATH:~/.rvm/gems/ruby-1.9.2-p290/bin
  export PATH=$PATH:~/.rvm/gems/ruby-1.9.2-p290@global/bin
  export PATH=$PATH:~/.rvm/rubies/ruby-1.9.2-p290/bin
  export PATH=$PATH:~/bin
  export PATH=$PATH:/usr/lib/lightdm/lightdm
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:/usr/local/bin
  export PATH=$PATH:/usr/sbin
  export PATH=$PATH:/usr/bin
  export PATH=$PATH:/sbin
  export PATH=$PATH:/bin
  export PATH=$PATH:/usr/games
  export PATH=$PATH:/usr/local/games
fi

export PATH=$PATH:~/Applications/android-sdk-linux/platform-tools
