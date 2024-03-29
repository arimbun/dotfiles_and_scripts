#!/bin/bash

set -euo pipefail

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install go gomplate kubectl zsh-autocomplete zsh-syntax-highlighting zsh-git-prompt gpg2 neovim node
brew install clipy --cask

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Neovim
npm install -g neovim
python3 -m pip install --user --upgrade pynvim

# Markdown-TOC
npm install -g markdown-toc

# VimPlug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

neovim_dir=.config/nvim
mkdir $HOME/$neovim_dir && cp $neovim_dir/init.vim $HOME/$neovim_dir

# Go
# go get -u github.com/nsf/gocode                 # completion
# go get -u github.com/zmb3/gogetdoc              # documentation
# go get -u golang.org/x/tools/cmd/goimports      # import resolution/rewriting
# go get -u github.com/golang/lint/golint         # linting
# go get -u github.com/rogpeppe/godef             # goto definition
# go get -u github.com/alecthomas/gometalinter    # metalinting
# go get -u golang.org/x/tools/cmd/gorename       # rename go identifiers
# go get -u github.com/go-delve/delve/cmd/dlv     # go debugger (delve)
