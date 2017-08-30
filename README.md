# vim  

##### **last update:** August 2017

Compiled vim from sources

```sh
git clone https://github.com/vim/vim.git
```

```
cd vim/src
make -j4
```

You'd need `make install` as root in order to install the compiled vim.

#### Usage

Clone this repository and create symbolic links

```sh
ln -s /path/to/cloned/repo/dotvim ~/.vim
ln -s /path/to/cloned/repo/dotvimrc ~/.vimrc
```

Open `vim` and invoke `:PlugInstall`

#### List of Plugins installed

Look the plugins sections on `.vimrc`(`dotvimrc`)
