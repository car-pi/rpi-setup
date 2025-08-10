#!/bin/bash
echo "RUNNING common/git.sh"
git config --global pull.rebase true
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"
