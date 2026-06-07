#!/bin/zsh

sudo mv /usr/local/Cellar /usr/local/Cellar_bak
sudo mkdir /usr/local/Cellar
sudo chown -R runner /usr/local/Cellar
chmod u+w /usr/local/Cellar

brew install lz4
