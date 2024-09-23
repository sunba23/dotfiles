# My dotfiles
This repository contains dotfiles for my system.
## Requirements
### Git
```
apt install git
```
### [GNU stow](https://www.gnu.org/software/stow/)
```
apt install stow
```
## Installation
Clone the repository using git
```
git clone https://github.com/sunba23/dotfiles.git $HOME/dotfiles/
cd $HOME/dotfiles
```
Use stow to create symlinks
```
stow .
```
