# Instructions for bootstrapping ubuntu machine

## Set up i3

sudo apt install i3 \
     apt install git \ 
     apt install xodotool \
     apt install vim neovim

Set up i3/config, and window cycling 


## Set up ohmyzsh

1. Download ohmyzsh
2. Download suggestions for zsh
3. Set up plugins


## Compile xsecure lock from source


Add dependencies

```
sudo apt install libpam0g-dev libxmu-dev
```


Set up xsecure lock

https://github.com/google/xsecurelock

Make sure to set it up in disco mode

## Download docker

https://docs.docker.com/desktop/install/debian/

## Fonts

```
apt install texlive-fonts-extra
apt install texlive-fonts-recommended
```

## Set up pyenv and install a global python

1) Get pyenv https://github.com/pyenv/pyenv-installer
2) Set up pyenv (add to .zshrc)

Get dependencies:

```
sudo apt install build-essential gcc g++ gfortran
```

```
sudo apt-get install aria2 curl git libbz2-dev libffi-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev llvm make tk-dev wget xz-utils zlib1g-dev --yes;
```

## Set up nvm, npm

## Download pycharm, vscode


