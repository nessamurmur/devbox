# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kardan"

# JRUBY
JRUBY_OPTS=--1.9

# Aliases
alias zshconfig="emacs ~/.zshrc"

alias ohmyzsh="emacs ~/.oh-my-zsh"

alias emacs="emacs -nw"

alias clean_merged_branches="git checkout master; git branch -a --merged | grep -v 'master$' | grep -v 'remotes/.*' | xargs git branch -D"

alias doit="hack && rake && ship"

alias ssh_aws="ssh -i ~/.ssh/ubuntu.pem ubuntu@ec2-54-202-202-86.us-west-2.compute.amazonaws.com"

alias cuke="cucumber"

alias very="git"

alias much="git"

alias wow="git status"

alias fuck-vagrant="vagrant halt && vagrant destroy -f"

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
plugins=(zsh-syntax-highlighting git npm node bundler rspec rails brew chruby ruby-install ruby gem heroku aws)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR="/usr/bin/emacs -nw"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/share/elasticsearch/bin

# Elixir
export PATH=$PATH:/home/nifty/source/elixir/bin

# LFE
export PATH=$PATH:/home/nifty/source/lfe/bin

# RSense
PATH=$PATH:/opt/rsense-0.3/bin/

# chruby
export DEFAULT_RUBY=ruby-2.1.0

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ${DEFAULT_RUBY}
