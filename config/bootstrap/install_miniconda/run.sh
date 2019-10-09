#!/bin/bash -xe

wget -q "$1" -O "$HOME/miniconda.sh"
bash "$HOME/miniconda.sh" -b -p "$HOME/conda"

# the ".bash_local" bit is to avoid clashing with my dotfiles on master node
echo -e "\nexport \"PATH=$HOME/conda/bin:$PATH\"" >> "$HOME/.bash_local"
echo -e "\nsource \"$HOME/.bash_local\"" >> "$HOME/.bashrc"

# install packages
conda install -y ipython jupyter # FIXME

