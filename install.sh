#!/usr/bin/env bash

echo "Installing dotfiles"

echo "Initializing submodule(s)"
git submodule update --init --recursive


if [ "$(uname)" == "Darwin" ]; then
	echo -e "\n\nRunning on OSX"

	source install/brew.sh

	source install/osx.sh

	source install/links.sh

fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Install Oh-My-Zsh"
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Done."
