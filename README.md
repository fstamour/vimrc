# My vim configurations

## Install

Non-windows
```sh
git clone git@github.com:fstamour/vimrc.git ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Windows
```cmd
git clone git@github.com:fstamour/vimrc.git ~/vimfiles
mklink /d .vim vimfiles
curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open vim and run `:PlugInstall`.
Source the vimrc again, the colorscheme should change.

## Notes for nvim

Can load vim's config with this:
The vimrc is located in `%appdata%/../Local/nvim/init.vim` on windows and 
probably in `~/.config/nvim` on other systems.

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

## Windows

### Python support

Go to https://www.python.org/downloads/ and install v3.6+

### VsVim

You might have to check VsVim's settings to make sure it loads `~/.vimrc`.


