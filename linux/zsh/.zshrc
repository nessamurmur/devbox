# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kardan"

# Aliases
alias zshconfig="emacs ~/.zshrc"

alias ohmyzsh="emacs ~/.oh-my-zsh"

alias emacs="emacs -nw"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-syntax-highlighting git hub osx npm node bundler rspec rails3 brew rvm rbenv ruby sublime gem heroku)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR="/usr/bin/emacs -nw"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:

export PATH=$PATH:/home/nifty/source/elixir/bin

# RVM
source /home/nifty/.rvm/scripts/rvm

# RVM Path
export PATH=/.rvm/bin:$PATH # Add RVM to PATH for scripting
export PATH=/Users/nifty/.rvm:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
