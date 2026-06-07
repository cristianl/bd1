#!/bin/zsh

sudo mv /usr/local/Cellar /usr/local/Cellar_bak
sudo mkdir /usr/local/Cellar
sudo chown -R $USER /usr/local/Cellar
chmod u+w /usr/local/Cellar

export MACOSX_DEPLOYMENT_TARGET="13.0"
export CMAKE_OSX_DEPLOYMENT_TARGET="13.0"
brew install --build-from-source $(brew deps --installed zstd) zstd
sudo rm -r /usr/local/Cellar/cmake
brew cleanup
brew autoremove
