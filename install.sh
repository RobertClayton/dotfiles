#!/bin/bash

set -e

yellow() {
  tput setaf 3
  echo "$*"
  tput sgr0
}

info(){
  echo
  yellow "$@"
}

brew_bundle(){
  brew bundle --file="$1"
}

info "Installing Homebrew if not already installed..."
if ! command -v brew > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

info "Installing Homebrew packages..."
brew tap homebrew/bundle
brew_bundle Brewfile
# Brewfile.casks exits 1 sometimes but didn't actually fail
brew_bundle Brewfile.casks || true

info "Checking for command-line tools..."
if ! command -v xcodebuild > /dev/null; then
  xcode-select --install
fi

info "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
# We need the rcrc because it tells `rcup` to ignore thousands of useless Vim
# backup files that slow it down significantly.
RCRC=rcrc rcup -d .

info "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

info "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting

info "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-iosevka
if ! system_profiler SPFontsDataType | grep -q 'Inconsolata-Regular'; then
  open fonts/Inconsolata*
fi

#info "Running all setup scripts..."
#for setup in tag-*/setup; do
#  dir=$(basename "$(dirname "$setup")")
#  info "Running setup for ${dir#tag-}..."
#  . "$setup"
#done

#asdf install

info 'Install complete.'
