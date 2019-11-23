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
  brew bundle --file="$1" --verbose
}

info "Installing Homebrew if not already installed..."
if ! command -v brew > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update --verbose
fi

info "Installing Homebrew packages..."
brew tap homebrew/bundle
brew_bundle Brewfile

info "Installing Homebrew casks..."
# Sometimes exits 1 but didn't actually fail
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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

info "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting || true

info "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-iosevka
if ! system_profiler SPFontsDataType | grep -q 'Inconsolata-Regular'; then
  open fonts/Inconsolata*
fi

info "Running all setup scripts..."
for setup in tag-*/setup; do
  dir=$(basename "$(dirname "$setup")")
  info "Running setup for ${dir#tag-}..."
  . "$setup"
done

info "Creating Projects directory if not already created ..."
if ! [ -d ~/Projects/ ]; then
  mkdir ~/Projects
fi

info "Installing Medis if not already installed ..."
if ! [ -d ~/Projects/medis ]; then
  cd ~/Projects/
  git clone git@github.com:luin/medis.git
  cd ~/Projects/medis
  npm install
  npm run build
fi

info 'Install complete.'
