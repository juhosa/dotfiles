#!/bin/bash

#if [[ -f $HOME/.ssh/id_rsa ]]
#then
	#echo "ssh key found"
#else
	#echo "generate ssh key first and set it to github!"
	#exit 1
#fi


### Update the system
sudo apt-get update -y & sudo apt-get upgrade -y


### Install things
sudo apt-get install -y git vim tmux build-essential cmake python-dev python3-dev python-setuptools

sudo easy_install pip
sudo apt-get install -y python3-pip
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

sudo /usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2018.01.30_all.deb keyring.deb SHA256:baa43dbbd7232ea2b5444cae238d53bebb9d34601cc000e82f11111b1889078a
sudo dpkg -i ./keyring.deb
sudo echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
sudo apt-get update

sudo apt-get install -y i3
sudo apt-get install -y lxappearance
sudo apt-get install -y rofi
sudo apt-get install -y compton
sudo apt-get install -y i3blocks
sudo apt-get install -y imagemagick
sudo apt-get install -y arc-theme
sudo apt-get install -y scrot kpcli
sudo apt-get install -y ranger atool caca-utils highlight libsixel-bin w3m-el cmigemo mpv dict dictd dict-wn
sudo apt-get install -y feh mupdf
sudo apt-get install -y zsh
sudo apt-get install -y xfce4-terminal
sudo apt-get install -y unclutter
sudo apt-get install -y libx11-dev libxext-dev libxft-dev fonts-inconsolata


cd $HOME/Downloads

wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb

sudo dpkg -i playerctl-0.5.0_amd64.deb

mkdir $HOME/.fonts

# yosemite font
cd $HOME/Downloads && wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip && unzip master.zip && cd YosemiteSanFranciscoFont-master && cp *.ttf $HOME/.fonts

# font-awesome
cd $HOME/Downloads && wget https://github.com/FortAwesome/Font-Awesome/releases/download/5.0.7/fontawesome-free-5.0.7.zip && unzip fontawesome-free-5.0.7.zip && cp fontawesome-free-5.0.7/use-on-desktop/*.otf $HOME/.fonts

# icons
#sudo add-apt-repository ppa:moka/daily
#sudo apt-get update
sudo apt-get install -y moka-icon-theme

### Copy configs from dotfiles/ into correct places

cd $HOME

cd dotfiles

ln -s ~/dotfiles/vimrc ~/.vimrc 
ln -s ~/dotfiles/vim ~/.vim 
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf 
ln -s ~/dotfiles/gitconfig ~/.gitconfig 
ln -s ~/dotfiles/install/own_aliases.zsh ~/.oh-my-zsh/custom/own_aliases.zsh
ln -s ~/dotfiles/.config/i3 $HOME/.config/i3
rm -rf $HOME/.config/ranger
ln -s ~/dotfiles/.config/ranger $HOME/.config/ranger
ln -s ~/dotfiles/.config/scripts $HOME/.config/scripts
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/Xmodmap ~/.Xmodmap

#mkdir $HOME/.config/scripts

chsh -s $(which zsh)

#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh
sed -i.tmp 's:env zsh::g' install.sh
sed -i.tmp 's:chsh -s .*$::g' install.sh
sh install.sh

cp $HOME/dotfiles/ohmyzsh/honukai.zsh-theme $HOME/.oh-my-zsh/themes

echo Install i3-gaps from https://github.com/maestrogerardo/i3-gaps-deb

### Restart system
echo "You really should restart the system now for things to take effect."
