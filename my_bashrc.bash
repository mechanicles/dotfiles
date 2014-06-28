# Commands
alias solr_start='rake sunspot:solr:start'
alias solr_stop='rake sunspot:solr:stop'
alias solr_reindex='rake sunspot:solr:reindex'
alias test_solr_start='RAILS_ENV=test rake sunspot:solr:start'
alias test_solr_stop='RAILS_ENV=test rake sunspot:solr:stop'
alias dj_start='script/delayed_job start'
alias dj_stop='script/delayed_job stop'
alias tlf="tail -f"
alias l='ls'
alias ll='ls -al'
alias ls='ls -ltrG'
alias lh='ls -Alh'
alias paux='ps aux| grep'

# Bundler
alias b="bundle"
alias be="bundle exec"

# Rubygems
alias gi="gem install"
alias giv="gem install -v"

# Filesystem
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."
alias dotf="cd $HOME/dotfiles"

# Git
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gsf='git submodule foreach git pull' # update submodules
alias grm='git fetch origin && git rebase -i origin/master'

# Tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tpob="tmux new -s opbuilder"

# Vim
alias vime="vim ~/.vimrc"

# Show git branch name to your shell prompt
function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

export ACKRC=".agrc"
export AGRC=".agrc"

# Your local/machine dependent bash scripts
[[ -s ${HOME}/.local_bashrc.bash ]] && source ${HOME}/.local_bashrc.bash
