### This is a repository for my personal system configuration

## System
- My system is Antergos (Arch-based linux distribtution)
- My used desktop environment is Cinnamon, some settings are 
specifically for it


## used packages
# General
The file `packages/general.sh` contains packages which are useful utilities for system usage.
- `youtube-dl`: Simple tool to download videos from many services, of course including youtube
- `vim`: for some reason the editor is not installed by default, so it is additionally installed


# Developing
All the stuff that is needed for developing
- `jetbrains-toolbox`: A installer for IDEs featuring most needed programming languages
- `git`: No need to explain. Version control system
- `graphviz`: Toolsuite for generating graphs from a textual description

After installing all packages, a username and email for the global git config are prompted.


# Communication
The file `packages/communication.sh` contains all packages needed for communication with other people
- `telegram-desktop`: The desktop version of the Telegram messenger


## Still manual
# Discord
This is an AUR package, and requires some extra steps for installing.

One way for installing is exectuing a command like `yay -S discord --mflags --nocheck`. The additional flags are for preventing unit test for the c++ library.

The other way of autmatically installing it would be somewhat like 

> pushd /tmp
> 
> rm -rf discord 2>/dev/null
> wget https://aur.archlinux.org/cgit/aur.git/snapshot/discord.tar.gz
> tar -xzf discord.tar.gz
> cd discord
> makepkg -sri -- noconfirm
> 
> popd

but this probably (not tested) has still the problem of checking all unit tests when installing the dependent libraries.

Another problem with discord was a audio glitch when using a voice channel, but apending ` tsched=0` to line 47 in `/etc/pulse/default.pa` has fixed it.
