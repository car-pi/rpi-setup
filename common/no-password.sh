#!/bin/bash
echo "RUNNING common/no-password.sh"
echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/nopasswd >/dev/null
sudo chmod 440 /etc/sudoers.d/nopasswd

