#!/bin/zsh

sudo mv /usr/local/Cellar /usr/local/Cellar_bak
sudo mkdir /usr/local/Cellar
sudo chown -R $USER /usr/local/Cellar
chmod u+w /usr/local/Cellar

export MACOSX_DEPLOYMENT_TARGET="13.5"
export CMAKE_OSX_DEPLOYMENT_TARGET="13.5"
export CFLAGS="-arch x86_64 -march=sandybridge -mtune=sandybridge -Os"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="$CFLAGS"
# export CMAKE_OSX_ARCHITECTURES="x86_64"

brew install --build-from-source $(brew deps zstd) zstd
sudo rm -r /usr/local/Cellar/cmake
brew cleanup
brew autoremove
