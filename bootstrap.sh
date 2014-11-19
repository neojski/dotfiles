#!/usr/bin/env bash

# With tiny changes copied from:
# https://github.com/mathiasbynens/dotfiles/blob/411e9dc0eeee1144e704773a5c1a725defb92695/bootstrap.sh

# cd to directory that this file is in (so that . in rsync is this dir)
cd "$(dirname "${BASH_SOURCE}")"

# This copies all the changed files to home directory.
# TODO: review.
function doIt() {
	rsync --exclude ".git/" --exclude "bootstrap.sh" --exclude "README.md" -avh --no-perms . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo ""
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt