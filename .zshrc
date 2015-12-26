export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cange"
echo "Now using zsh theme: \"$ZSH_THEME\""
# update theme
source $ZSH/oh-my-zsh.sh
sleep 1
clear

# SSHRC
# If you really need to use it as "tar", you can add a "gnubin" directory
# PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Load RVM, if you are using it (RubyVersionManager)
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm
  # Add RVM to PATH for scripting Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  PATH=$PATH:$HOME/.rvm/bin
fi

# RVM – temporary test –
# PATH="$HOME/.rvm/gems/ruby-2.1.2/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function



## Path to your oh-my-zsh configuration.
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew git git-extra git-flow history node npm rvm)

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

bindkey '^r' history-incremental-pattern-search-backward
bindkey '^f' history-incremental-pattern-search-forward

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# add my ssh information
ssh-add

sleep 1
clear
