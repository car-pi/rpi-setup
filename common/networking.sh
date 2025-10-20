#!/bin/bash
echo "RUNNING common/networking.sh"
sudo nmcli c mod "Wired connection 1" ipv4.addresses 192.168.12.1/24 ipv4.gateway 192.168.12.2 ipv4.method manual autoconnect yes ipv4.route-metric 200
sudo nmcli c mod preconfigured ipv4.route-metric 100
sudo nmcli c up "Wired connection 1"
sudo nmcli c up preconfigured
