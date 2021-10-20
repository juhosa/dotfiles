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


Create symlinks:

    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/global-gitignore ~/.gitignore
    ln -s ~/dotfiles/install/own_aliases.zsh ~/.oh-my-zsh/custom/own_aliases.zsh


