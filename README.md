# .vim 

# Introduction

Those are my config files for Vim with [Vim-Plug](https://github.com/junegunn/vim-plug)
The configuration files are hidden by the dot.

# Installation

### Step 1
Clone this repo at `~/.vim` (the directory must not exists!)

```
git@github.com:Daniel-M/vim.git ~/.vim
```

### Step 2
Create a symbolic link for the `.vimrc` at `$HOME`

```
ln -s ~/.vim/.vimrc ~/.vimrc
```

### Step 3
Execute `vim` and perform the instruction `:PlugUpgrade`

### Step 4
Once `:PlugUpgrade` finishes execute `:PlugInstall`

That's it


## tl;dr for compiling vim on Debian 

The instructions are a little bit outdated, adjust as fit,  

```
# Purge package-manager installed vim packages
# It could be apt purge vim*
apt purge vim vim-runtime vim-tiny vim-common

#Install prerequisites for supporting certain plugins and features
# The GTK2 and libXT libraries are to allow GUI support with GTK2 and are optional
apt install python-dev python3-dev ruby-dev libperl-dev lua5.1 liblua5.1-0-dev luajit libgtk2.0-dev libxt-dev

#Clone the repo for vim (Check the Travis build-flag at repositories homepage,
# it would be a waste of time try to build a non-working repository snapshot)
git clone https://github.com/vim/vim.git

# Configure process, a long line to support most of features
# The configure process works in my Debian Testing (Buster)
# If the process fails, check wich prerequisite are you missing
cd vim/src
#./configure --with-features=huge --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu --enable-terminal=yes --enable-perlinterp=yes --enable-largefile --enable-rubyinterp --with-ruby-command=/usr/bin/ruby --enable-luainterp=yes --with-lua-prefix=/usr --enable-cscope --enable-multibyte --disable-netbeans --with-x --enable-fontset --enable-gui=gtk2 --enable-fail-if-missing
./configure --with-features=huge --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu/ --enable-terminal=yes --enable-perlinterp=yes --enable-largefile --enable-rubyinterp --with-ruby-command=/usr/bin/ruby --enable-luainterp=yes --with-lua-prefix=/usr --enable-cscope --enable-multibyte --disable-netbeans --with-x --enable-fontset --enable-gui=gtk2 --enable-fail-if-missing
make -j4

```
