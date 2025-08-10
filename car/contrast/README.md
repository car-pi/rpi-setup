# Contrast
My baby <3

Here are steps after install:

1. First get the IP
2. Copy keys to make sshing easier: `ssh-copy-id contrast@IP`
3. Copy ssh keys to clone repo and push `rsync -P ~/.ssh/id_ed25519.pub ~/.ssh/id_ed25519 contrast@IP:~/.ssh`
4. Copy helix config: `rsync -rP ~/.config/helix contrast@IP:~/.config`

