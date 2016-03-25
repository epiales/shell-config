#!/bin/sh

if [[ $(uname -s) == "Darwin" ]]; then
	if hash apm 2> /dev/null; then
		atom install --packages-file=$HOME/.shell-config/setup/atom-packages.txt --verbose
	fi
fi
