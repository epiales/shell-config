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
		"gnupg2"
		"gource"
		"gpg-agent"
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
		"pinentry"
		"pv"
		"ruby"
		"tree"
		"unison"
		"watch"
		"wget"
		"zsh"
	)

	casklist=(
		"4k-youtube-to-mp3"
		"cheatsheet"
		"discord"
		"java"
		"livereload"
		"screenhero"
		"soundflower"
		"sourcetree"
		"steam"
		"tcl"
		"unity-web-player"
		"vagrant"
		"virtualbox"
		"vlc"
		"ynab"
	)

	trap "exit" INT
	for package in "${packages[@]}"; do
		brew install $package
	done

	for cask in "${casklist[@]}"; do
		brew cask install $cask
	done
fi
