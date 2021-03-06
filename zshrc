ZSH_DISABLE_COMPFIX="true"
ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"

export PATH="$HOME/bin:$PATH"; # Add `~/bin` to the `$PATH`
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# Loading rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PUMA_WORKER_TIMEOUT=99999999999999999999 # This is a work around to stop Puma timing out in development
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(alias-finder colored-man-pages common-aliases copydir copyfile docker docker-compose git rails redis-cli ruby zsh_reload)

# FZF Integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--color fg:188,bg:016,hl:103,fg+:099,bg+:016,hl+:104,info:183,prompt:110,spinner:107,pointer:167,marker:215'

# Aliases
for ALIAS in `find $HOME/dotfiles/aliases`
do
  [ -f "$ALIAS" ] && source "$ALIAS"
done

# SP specific config
. ~/dotfiles/sp/ateam.sh

# Leave this command last, so it can load in all the settings above.
source $ZSH/oh-my-zsh.sh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# `print_exit_value` shows a message with the exit code when a command returns with a non-zero exit code.
# However, zsh-syntax-highlighting somehow unsets this options option, so we must set it after sourcing zsh-syntax-highlighting.
setopt print_exit_value

local timestamp="%{$fg_bold[yellow]%} %D{%F %T} % %{$reset_color%}"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local current_directory="%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT='${timestamp}${ret_status} ${current_directory} $(git_prompt_info)'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/RClayto/.sdkman"
[[ -s "/Users/RClayto/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/RClayto/.sdkman/bin/sdkman-init.sh"
