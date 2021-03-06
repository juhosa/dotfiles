# Installation #

Possibly the easy way is just to

    git clone git://github.com/juhosa/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ./install.sh

Make zsh your default shell
    
    chsh -s $(which zsh)
    
Install Oh-My-Zsh

    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

Clone repo

    git clone git://github.com/juhosa/dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by
running the commands:

    cd dotfiles
    git submodule init
    git submodule update

Or just do:

    git submodule update --init --recursive

Create symlinks:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/global-gitignore ~/.gitignore
    ln -s ~/dotfiles/install/own_aliases.zsh ~/.oh-my-zsh/custom/own_aliases.zsh

# VIM #

My preferences for Vim are stored in `dotfiles/vimrc`. All plugins and scripts are stored in the `dotfiles/vim`
directory.

## Adding Plugin Bundles ##

    cd ~/dotfiles
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

