# sys-setup
As I learn more about Linux I want to keep a log of any scripts, configs etc. that I create so that's what I commit here

## homebrew

```bash
brew bundle install --file <Brewfile location>
```

## vim

Uses [Vundle](https://github.com/VundleVim/Vundle.vim).

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Copy the .vimrc file as needed and then run `:PluginInstall` in vim.

## oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
