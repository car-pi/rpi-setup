#!/bin/bash
echo "RUNNING car/contrast/helix-editor.sh"
sudo add-apt-repository ppa:maveonair/helix-editor -y
sudo apt update -y
sudo apt install helix -y
git config --global core.editor hx

