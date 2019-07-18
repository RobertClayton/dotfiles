[[ -s ~/.bashrc ]] && source ~/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias atom="atom ."
alias bashp="atom ~/.bash_profile"
alias be="bundle exec"
alias ber="bundle exec rspec"
alias bers="bundle exec rails server"
alias berc="bundle exec rails console"
alias brdm="bundle exec rake db:migrate"
alias checkport3000="lsof -i tcp:3000"
alias dotfiles="cd ~/.dotfiles; atom ."
alias ga="git add"
alias gap="git add -p"
alias gcm="git commit -m"
alias gco="git checkout"
alias gl="git log"
alias glo="git log --oneline"
alias gpl="git pull"
alias gps="git push"
alias gs="git status -uno"
alias h="history"
alias home="cd ~"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/7-Projects"
alias it1="itermocil base"
alias itm="itermocil main"
alias killpid="kill -9 " # followed by PID number e.g.: `killpid 13822`
alias ls="ls -GFh"
alias lsa="ls -a"
alias lsal="ls -al"
alias lsl="ls -l"
alias mine="rmine ."
alias p="cat"
alias q="exit"
alias quiver="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/6-Programming/Notes/Quiver.qvlibrary"
alias rc="rails console"
alias rdbm="rake db:migrate"
alias rs="rails server"
alias startmedis="cd ~/Projects/medis; npm run electron"
alias startredis="cd ~; redis-server"
alias tailredis="cd ~; redis-cli monitor" 

# Fun aliases
alias mycommittimes="git log --author=\"RobertClayton\" --date=iso | perl -nalE 'if (/^Date:\s+[\d-]{10}\s(\d{2})/) { say \$1+0 }' | sort | uniq -c|perl -MList::Util=max -nalE '\$h{\$F[1]} = \$F[0]; }{ \$m = max values %h; foreach (0..23) { \$h{\$_} = 0 if not exists \$h{\$_} } foreach (sort {\$a <=> \$b } keys %h) { say sprintf \"%02d - %4d %s\", \$_, \$h{\$_}, \"*\"x (\$h{\$_} / \$m * 50); }'"
alias temp="curl wttr.in"
alias weather="curl wttr.in"


function killprocess {
  ### PROCESS
  # show output of "ps -ef", use [tab] to select one or multiple entries
  # press [enter] to kill selected processes and exit.
  # or press [escape] to exit completely.

  local pid=$(ps -ef | sed 1d | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[kill:process]'" | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}
alias kp=killprocess


function findpath {
  ### PATH
  # list directories in $PATH, press [enter] on an entry to list the executables inside.
  # press [escape] to exit.

  local loc=$(echo $PATH | sed -e $'s/:/\\\n/g' | eval "fzf ${FZF_DEFAULT_OPTS} --header='[find:path]'")

  if [[ -d $loc ]]; then
    echo "$(rg --files $loc | rev | cut -d"/" -f1 | rev)" | eval "fzf ${FZF_DEFAULT_OPTS} --header='[find:exe] => ${loc}' >/dev/null"
  fi
}
alias fp=findpath


function brewinstallplugin {
  ### BREW + FZF
  # update multiple packages at once
  # mnemonic [B]rew [I]nstall [P]lugin

  local inst=$(brew search | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:install]'")

  if [[ $inst ]]; then
    for prog in $(echo $inst)
    do brew install $prog
    done
  fi
}
alias bip=brewinstallplugin


function brewupdateplugin {
  ### BREW + FZF
  # uninstall multiple packages at once, async
  # mnemonic [B]rew [U]pdate [P]lugin

  local upd=$(brew leaves | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:update]'")

  if [[ $upd ]]; then
    for prog in $(echo $upd)
    do brew upgrade $prog
    done
  fi
}
alias bup=brewupdateplugin


function brewcleanplugin {
  ### BREW + FZF
  # mnemonic [B]rew [C]lean [P]lugin (e.g. uninstall)

  local uninst=$(brew leaves | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:clean]'")

  if [[ $uninst ]]; then
    for prog in $(echo $uninst)
    do brew uninstall $prog
    done
  fi
}
alias bcp=brewcleanplugin


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
