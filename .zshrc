export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cange"
echo "Now using zsh theme: \"$ZSH_THEME\""
sleep 1
clear

# Load RVM, if you are using it (RubyVersionManager)
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm
  # Add RVM to PATH for scripting Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  PATH=$PATH:$HOME/.rvm/bin
fi
## Path to your oh-my-zsh configuration.
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew git git-extra git-flow history node npm rvm)

source $ZSH/oh-my-zsh.sh

# Load NVM, if you are using it (NodeVersionManager)
if [[ -s $HOME/.nvm/nvm.sh ]]; then
  source $HOME/.nvm/nvm.sh
  source $(brew --prefix nvm)/nvm.sh
  export NVM_DIR=~/.nvm
  nvm use default
fi
source $(brew --prefix nvm)/nvm.sh


export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
bindkey '^r' history-incremental-pattern-search-backward
bindkey '^f' history-incremental-pattern-search-forward
#
# NodeJS Version Manager initialization
# export NVM_DIR="~/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source $(brew --prefix nvm)/nvm.sh

# RVM
export PATH="$HOME/.rvm/gems/ruby-2.1.2/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# add my ssh information
ssh-add

# Set the path nginx
#export NGINX_PATH='/opt/nginx'
sleep 1
clear
