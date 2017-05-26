#!/bin/sh

set -e

if [[ $(uname -s) == "Darwin" ]]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew doctor
	brew update
	brew prune

	trap "exit" INT

	cat ./tap-list | xargs brew tap $1
	cat ./brew-list | xargs -n 1 brew install $1
	cat ./cask-list | xargs -n 1 brew cask install $1

fi
