[[ -s ~/.bashrc ]] && source ~/.bashrc

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls="ls -GFh"
alias lsl="ls -l"
alias lsa="ls -a"
alias lsal="ls -al"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/7-Projects"
alias itm="itermocil main"
alias be="bundle exec"
alias rs="rails server"
alias rc="rails console"
alias ber="bundle exec rspec"
alias bers="bundle exec rails server"
alias berc="bundle exec rails console"
alias startredis="cd ~; redis-server"
alias startelastic="cd ~/Projects/reviews-and-advice/; elasticsearch"
alias es="cd ~/Projects/reviews-and-advice/; elasticsearch"
alias esl="cd ~/Projects/reviews-and-advice/; ES_JAVA_OPTS='-Xms100m -Xmx1g' elasticsearch"
alias startelasticlimited="cd ~/Projects/reviews-and-advice/; ES_JAVA_OPTS='-Xms100m -Xmx1g' elasticsearch"
alias startmedis="cd ~/Projects/medis; npm run electron"
alias tailredis="cd ~; redis-cli monitor"
alias startsidekiq="bundle exec sidekiq -c 5 -q default -q published_edition_queue"
alias sq="bundle exec sidekiq -c 5 -q default -q published_edition_queue"
alias ga="git add"
alias gap="git add -p"
alias gs="git status -uno"
alias gco="git checkout"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gl="git log"
alias glo="git log --oneline"
alias weather="curl wttr.in"
alias temp="curl wttr.in"
alias bashp="atom ~/.bash_profile"
alias q="exit"
alias h="history"
alias p="cat"
alias home="cd ~"
alias mine="rmine ."
alias atom="atom ."
alias checkport3000="lsof -i tcp:3000"
alias killpid="kill -9 " # followed by PID number e.g.: `killpid 13822`
alias dotfiles="cd ~/.dotfiles; atom ."

# make sure to add .git-completion.bash to home(~)
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  current_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
  }

  other_branches() {
    git branch 2> /dev/null | sed -e '/^*/d'
  }

  print_current_branch() {
    if [[ "$(current_branch)" != "" ]]; then
      printf "\n$(current_branch)"
    fi
  }

  print_other_branches() {
    if [[ "$(other_branches)" != "" ]]; then
      printf "\n$(other_branches)"
    fi
  }

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $CYANBOLD\$(print_current_branch)$CYAN\$(print_other_branches)\n$YELLOW\D{%F %T} $BLUE[\#] → $RESETCOLOR"
}
prompt

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Added by GraphLab Create Launcher v3.0.1
export PATH="/Users/rclayto/anaconda/bin:$PATH"

export PUMA_WORKER_TIMEOUT=9999999999999999999999999
