#! /usr/bin/bash

# run from home dir
#Set pwd as $HOME
cd $HOME

if [ -f /etc/os-release ]; then
	OS=$NAME
fi
# installing all the packages
if [ $NAME="Ubuntu" ]; then
	INSTALLER="apt"
	sudo apt update && sudo apt-get upgrade
fi
#---------------------- PACKAGES ----------------------
sudo $INSTALLER install tmux -y
sudo $INSTALLER install curl -y
sudo $INSTALLER install wget -y
sudo $INSTALLER install unzip -y
sudo $INSTALLER install tar -y
sudo $INSTALLER install gzip -y
sudo $INSTALLER install btop -y

sudo $INSTALLER install build-essential -y
sudo $INSTALLER install gdb -y
sudo $INSTALLER install npm -y
sudo $INSTALLER install ripgrep -y
sudo $INSTALLER install direnv -y
sudo $INSTALLER install bat -y
sudo $INSTALLER install tig -y

#---------------------- CMAKE ----------------------
wget https://github.com/Kitware/CMake/releases/download/v3.30.2/cmake-3.30.2-linux-x86_64.sh
sudo sh cmake-3.30.2-linux-x86_64.sh --prefix=/usr/local --skip-license

#---------------------- Neovim ----------------------
# Neovim


# Google Chrome

# cleanup
sudo apt autoremove

#------------------GIT AND GITHUB---------------------


# github cli gh
# github auth for git


# ---------------setup git-------

git config --global user.name "Vishusharma"
git config --global user.email "vishusharma296@gmail.com"

#---------------------- DOT FILES ----------------------
# echo ".cfg" >.gitignore
# git clone --bare https://github.com/linem-davton/.cfg $HOME/.cfg



#---------------------- OBSIDIAN----------------------



#---------------------- FZF ----------------------
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#---------------------- zoxide  ----------------------
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh


#---------------------- lazydocker----------------------
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

#---------------------- lazygit----------------------
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

