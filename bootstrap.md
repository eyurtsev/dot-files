# Instructions for bootstrapping ubuntu machine

```
sudo apt-get install build-essential libssl-dev git gcc g++ 
sudo apt-get install gfortran
```

```
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo apt-get build-dep matplotlib
sudo pip install virtualenv virtualenvwrapper
sudo apt-get install cython
sudo apt-get install liblapack-dev libblas-dev
```

# Install stuff

sudo apt install git \ 
     apt install xodotool \
     apt install vim neovim

# Further configuration

1) i3/config set paths for window cycling to .config/i3
2) Download ohmyzsh
3) Download suggestions for zsh



# Bash misc


  "\e[B": history-search-forward
  "\e[A": history-search-backward
   
  $if Bash
    # F10 toggles mc on and off
    # Note Ctrl-o toggles panes on and off in mc
    "\e[21~": "mc\C-M"
   
    #do history expansion when space entered
    Space: magic-space
  $endif

  # Include system wide settings which are ignored by default if one has their own .inputrc

  $include /etc/inputrc
  set show-all-if-ambiguous on

  # set command history filter
  export HISTIGNORE="&:ls:[bf]g:exit"
