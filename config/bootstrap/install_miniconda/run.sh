#!/bin/bash -xe

# The environment file we want to install
aws s3 cp "s3://$1/config/bootstrap/install_miniconda/environment.yml" .

# Install conda
wget -q "$2" -O "$HOME/miniconda.sh"
bash "$HOME/miniconda.sh" -b -p "$HOME/conda"
rm "$HOME/miniconda.sh" # clean up

# the ".bash_local" bit is to avoid clashing with my dotfiles on master node
echo -e "\nexport \"PATH=$HOME/conda/bin:$PATH\"" >> "$HOME/.bash_local"
echo -e "\nsource \"$HOME/.bash_local\"" >> "$HOME/.bashrc"

# install packages
conda env update -q -n base -f environment.yml
rm -f environment.yml

