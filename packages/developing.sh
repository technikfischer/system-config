#!/bin/

echo "=== Setting up stuff for developing"

#install all needed packages
sudo pacman -S --needed --noconfirm jetbrains-toolbox git graphviz

# request user data for git
echo -n "?? Enter git name: "
read git_name

echo -n "?? Enter git mail: "
read git_mail

git config --global user.email "$git_mail"
git config --global user.name "$git_name"
