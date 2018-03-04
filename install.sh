#!/bin/sh
#reference https://gist.github.com/codeinthehole/26b37efa67041e1307db
#Author: Supritkumar Shah

echo "Starting installations....."

#check for homebrew, install if we don't have it
#homebrew is a package management for macs

if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#update homebrew recipes
brew update

#to make sure system is ready to brew
brew doctor





#install cask
echo "Installing cask..."
brew tap caskroom/cask
brew install cask

#GUI apps require brew cask
#Non GUI apps brew install
APPLICATIONS=(
  google-chrome
  java8
  sublime-text
  android-studio
  android-platform-tools
  slack
  visual-studio-code
  android-file-transfer
)

echo "Installing GUI applications..."
brew cask install ${APPLICATIONS[@]}

REACTENV=(
  node
  watchman
  postgresql
)
echo "Installing and setting up react-native environment..."
brew install ${REACTENV[@]}

#add all global installation apps here
NPMG=(
  react-native-cli
)
echo "Installing npm global packages .."
npm install -g ${NPMG[@]}

#setting react-native path for xcode to run IOS simulator
echo "Setting up xcode path"
sudo xcode-select -s /Applications/Xcode.app

#Cleaning up, deleting all the applications that are downloaded
echo "Cleaning up...."
brew cleanup

