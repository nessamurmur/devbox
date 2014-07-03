export SHELL=/bin/zsh

source ~/dotfiles/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_completion ~/dotfiles/zshuery/completion
load_correction

prompts '%{$fg[yellow]%}╭─ %{$reset_color%}%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(COLLAPSED_DIR)%{$reset_color%}$(virtualenv_info) %{$fg[blue]%}$(current_branch) %{$fg[red]%}$(ruby_version)%{$reset_color%}
%{$fg[yellow]%}╰─>%{$reset_color%} '

chpwd() {
    update_terminal_cwd
}

# Current branch
current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# Bind CTRL-L CTRL-R to backword/forward word
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

# Syntax highlighting
source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# JRUBY
JRUBY_OPTS=--1.9

# Aliases
alias node=nodejs

alias zshconfig="emacs ~/.zshrc"

alias emacs="emacs -nw"

alias clean_merged_branches="git checkout master; git branch -a --merged | grep -v 'master$' | grep -v 'remotes/.*' | xargs git branch -D"

alias cuke="cucumber"

alias very="git"

alias much="git"

alias wow="git status"

alias ack=ack-grep

alias be="bundle exec"

export EDITOR="/usr/bin/emacs -nw"

# git aliases
alias gitl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gits="git status -sb"

alias gitd="git diff"

alias binst="bundle install -j4"

alias gitco="git checkout"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Exenv
export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"
