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
		"docker-compose"
		"docker-machine"
		"docker"
		"drush"
		"fswatch"
		"git"
		"gnupg2"
		"gource"
		"gpg-agent"
		"homebrew/php/php70-redis"
		"homebrew/php/php70-xdebug"
		"homebrew/php/php70"
		"htop"
		"jmeter"
		"memcached"
		"mysql"
		"nmap"
		"nvm"
		"p7zip"
		"pinentry"
		"puzzles"
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
		"atom"
		"cheatsheet"
		"discord"
		"free-ruler"
		"gimp"
		"java"
		"livereload"
		"screenhero"
		"slate"
		"soundflower"
		"sourcetree"
		"steam"
		"tcl"
		"unity-web-player"
		"vagrant"
		"virtualbox"
		"vlc"
		"vmware-fusion7"
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
