# My vim configurations

## Install vim-plug

Non-windows
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Windows
```sh
curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open vim and run `:PlugInstall`.

## Notes for nvim

Can load vim's config with this.

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

## Notes on windows

Clone this repo in `~`. Then in _windows_ command line (i.e. not git-bash) enter `mklink .vimrc vimrc\vimrc`.

Can use the file `~/.vimrc`.
`.vim` folder is named `vimfiles` instead, but some plugin still put stuff in `.vim`.

### Nvim

The vimrc is located in `%appdata%/../Local/nvim/init.vim`

### VsVim

You might have to check VsVim's settings to make sure it loads `~/.vimrc`.


