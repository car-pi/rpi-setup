#!/bin/bash
echo "RUNNING car/contrast/contrast.sh"
export ROOT=/opt/car-pi
export GIT_USERNAME="Jumner"
export GIT_EMAIL="justin462@protonmail.com"
$ROOT/common/common.sh
$ROOT/car/contrast/helix-editor.sh
$ROOT/modules/ui-module/install/common/common.sh
$ROOT/modules/android-auto-module/install/common/common.sh
