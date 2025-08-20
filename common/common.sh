#!/bin/bash
echo "RUNNING common/common.sh"
$ROOT/common/no-password.sh
$ROOT/common/update.sh
$ROOT/common/git.sh
$ROOT/common/docker.sh
$ROOT/common/low-power-shutdown.sh
$ROOT/common/autologin.sh
$ROOT/common/ui.sh
