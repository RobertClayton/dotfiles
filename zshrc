export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/bin:$PATH"; # Add `~/bin` to the `$PATH`
export PATH="/Users/rclayto/anaconda/bin:$PATH" # Add Anaconda to the `$PATH`
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.

export PUMA_WORKER_TIMEOUT=99999999999999999999 # This is a work around to stop Puma timing out in development
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"

# FZF Integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--color fg:188,bg:016,hl:103,fg+:099,bg+:016,hl+:104,info:183,prompt:110,spinner:107,pointer:167,marker:215'

# Aliases
for ALIAS in `find $HOME/.dotfiles/aliases`
do
  [ -f "$ALIAS" ] && source "$ALIAS"
done

# Leave this command last, so it can load in all the settings above.
source $ZSH/oh-my-zsh.sh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# `print_exit_value` shows a message with the exit code when a command returns with a non-zero exit code.
# However, zsh-syntax-highlighting somehow unsets this options option, so we must set it after sourcing zsh-syntax-highlighting.
setopt print_exit_value

local timestamp="%{$fg_bold[yellow]%} %D{%C%m-%d-%y %I:%M:%S} % %{$reset_color%}"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local current_directory="%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT='${timestamp}${ret_status} ${current_directory} $(git_prompt_info)'
