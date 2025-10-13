#!/bin/bash
echo "RUNNING common/pulseaudio.sh"
sudo apt install -y pulseaudio pulseaudio-utils
sudo usermod -aG pulse,pulse-access $USER
sudo sed -i "s/; autospawn = yes/autospawn = yes/" /etc/pulse/client.conf
