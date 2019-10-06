export PATH="$HOME/bin:$PATH"; # Add `~/bin` to the `$PATH`
export PATH="/Users/rclayto/anaconda/bin:$PATH" # Add Anaconda to the `$PATH`
export PUMA_WORKER_TIMEOUT=99999999999999999999 # This is a work around to stop Puma timing out in development
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s ~/.prompt ]] && source ~/.prompt
[ -f ~/.fzf.bash ] && source ~/.fzf.bash # Fuzzy find

# Aliases
for ALIAS in `find $HOME/.dotfiles/aliases`
do
  [ -f "$ALIAS" ] && source "$ALIAS"
done

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Make sure to add .git-completion.bash to home(~)
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
