export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


ZSH_THEME="robbyrussell"

# Command execution time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases bundler git tmuxinator zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

RPOMPT='${PR_GREEN}$($rbenv_prompt_info)%{$reset_color%} ${PR_RED}${ruby_version}%{$reset_color%}'

# Add iTerm integration
# source ~/.iterm2_shell_integration.zsh

# FZF Integration
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# export FZF_DEFAULT_OPTS='--color fg:188,bg:016,hl:103,fg+:099,bg+:016,hl+:104,info:183,prompt:110,spinner:107,pointer:167,marker:215'

# rbenv
# eval "$(rbenv init -)"

alias usebash="chsh -s /bin/bash"
alias usezsh="chsh -s /bin/zsh"
alias dotfiles="cd ~/.dotfiles"
