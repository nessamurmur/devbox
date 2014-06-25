export SHELL=/bin/zsh

source ~/dotfiles/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_completion ~/dotfiles/zshuery/completion
load_correction

prompts '%{$fg[yellow]%}╭─ %{$reset_color%}%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(COLLAPSED_DIR)%{$reset_color%}$(virtualenv_info) $(git_prompt_info) %{$fg[red]%}$(ruby_version)%{$reset_color%}
%{$fg[yellow]%}╰─>%{$reset_color%} '

chpwd() {
    update_terminal_cwd
}

# Git prompt stuff
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr 'M'
zstyle ':vcs_info:*' unstagedstr 'M'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep '??' &> /dev/null ; then
    hook_com[unstaged]+='%F{1}??%f'
  fi
}

git_prompt_info() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
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

alias doit="hack && rake && ship"

alias cuke="cucumber"

alias very="git"

alias much="git"

alias wow="git status"

alias ack=ack-grep

alias fuck-vagrant="vagrant halt && vagrant destroy -f"

export EDITOR="/usr/bin/emacs -nw"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
