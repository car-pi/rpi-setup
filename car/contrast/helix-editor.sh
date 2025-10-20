#!/bin/bash
echo "RUNNING car/contrast/helix-editor.sh"

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"

# Build helix
cd $HOME
git clone https://github.com/helix-editor/helix
cd helix
cargo install \
   --profile opt \
   --config 'build.rustflags="-C target-cpu=native"' \
   --path helix-term \
   --locked

git config --global core.editor hx

