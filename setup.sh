# automatically download, run this file and then autodestroy
#TODO

# but first
sudo apt update && sudo apt upgrade -y

# general prerequisites
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git tmux xclip

#ssh 
ssh-keygen -t rsa -b 4096 -C "mihai.ghidoveanu@gmail.com" -f ~/.ssh/id_rsa -N ""

# zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Update openzsh theme and bash prompt - lambda and venv name 
# TODO 
# copy zsh from my git and overwrite current .zsh
# TODO

# Chromium
sudo apt install chromium-browser -y

#PYTHON
# pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

#python requirements
sudo apt-get install python-dev python-pip python3-dev python3-pip -y

#create virtualenv
PYVERSION=3.7.5
PYENVNAME=ml
pyenv install $PYVERSION
pyenv virtualenv $PYVERSION $PYENVNAME
pyenv activate $PYENVNAME

# prerequisites for python libraries
sudo apt-get install python3-setuptools
#install python libraries
pip install --upgrade pip
pip install -r requirements.txt

#nvim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y
#copy nvimrc config file
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim/
# vundle for nvim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# YCM setup
sudo apt install build-essential cmake python3-dev
cd ~/.config/nvim/bundle/YouCompleteMe 
python3 install.py --clangd-completer

# Tree
sudo apt install tree

