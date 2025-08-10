# RPi Setup
This repo contains installation scripts to make our lives easier.

# Directory Structure

## Common
To stay modular, everything that is common is in the common directory. If something in the common directory doesn't work, open an issue so we can track things. If you can't wait, move that code out of common for everyone.

## Distro
Note that we expect all systems to be based off Ubuntu LTS. This directory contains distro specific code.

## Device
Since you can use any SBC, the device folder is for code that is device specific (enabling IO, low power shutoff, etc...).

## Car
This repo is for implementation specific stuff like drivers for your touchscreen, etc... I might make another drivers directory or something so if two people have the same nieche interface, they can share the driver anc setup code.
