#!/bin/bash
echo "RUNNING common/autologin.sh"
sudo apt install -y mingetty
sudo cp /etc/systemd/system/getty.target.wants/getty@tty1.service /etc/systemd/system/mingetty@tty1.service
sudo sed -i "s/^ExecStart.*/ExecStart=-\/sbin\/mingetty --autologin $USER --noclear tty1/" /etc/systemd/system/mingetty@tty1.service
sudo systemctl enable mingetty@tty1.service
sudo systemctl disable getty@tty1.service
