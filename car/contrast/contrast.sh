#!/bin/bash
echo "RUNNING car/contrast/contrast.sh"
export ROOT=/home/contrast/rpi-setup
export GIT_USERNAME="Jumner"
export GIT_EMAIL="justin462@protonmail.com"
$ROOT/common/common.sh
$ROOT/car/contrast/helix-editor.sh
