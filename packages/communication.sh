#!/bin/sh


echo "=== Setting up communication stuff"

sudo pacman -S --needed --noconfirm telegram-desktop

# install discord
# pushd /tmp
# 
# rm -rf discord 2>/dev/null
# wget https://aur.archlinux.org/cgit/aur.git/snapshot/discord.tar.gz
# tar -xzf discord.tar.gz
# cd discord
# makepkg -sri -- noconfirm
# 
# popd
