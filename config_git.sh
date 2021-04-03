#!/bin/sh

. ./constants.sh

rm -f ~/.gitconfig

echo "[core]
	editor = code --wait
[user]
	name = $GIT_USER_NAME
	email = $GIT_USER_EMAIL
[alias]
    s = !git status -s
    c = !git add --all && git commit -m
    l = !git log --pretty=format:'%C(blue)%h %C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr'" >> ~/.gitconfig

ssh-keygen -t ed25519 -C "$GIT_USER_EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -sel clip < ~/.ssh/id_ed25519.pub