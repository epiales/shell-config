#!/bin/sh

set -e

if [[ $(uname -s) == "Darwin" ]]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew doctor
	brew update
	brew prune

	packages=(
		"caskroom/cask/brew-cask"
		"composer"
		"docker"
		"docker-compose"
		"docker-machine"
		"drush"
		"fswatch"
		"git"
		"gource"
		"htop"
		"jmeter"
		"memcached"
		"mysql"
		"nmap"
		"nvm"
		"p7zip"
		"php70"
		"php70-redis"
		"php70-xdebug"
		"pv"
		"tree"
		"unison"
		"watch"
		"wget"
		"zsh"
	)

	trap "exit" INT
	for package in "${packages[@]}"; do
		brew install $package
	done
fi
