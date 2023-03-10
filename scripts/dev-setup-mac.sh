#!/bin/bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install dotfiles
cp .* $HOME

# Homebrew packages
brew install go gomplate kubectl zsh zsh-autocompletions zsh-syntax-highlighting zsh-git-prompt gpg2 neovim

# Homebrew - clipboard manager
brew cask install clipy

# Go packages
# go get -u github.com/nsf/gocode                 # completion
# go get -u github.com/zmb3/gogetdoc              # documentation
# go get -u golang.org/x/tools/cmd/goimports      # import resolution/rewriting
# go get -u github.com/golang/lint/golint         # linting
# go get -u github.com/rogpeppe/godef             # goto definition
# go get -u github.com/alecthomas/gometalinter    # metalinting
# go get -u golang.org/x/tools/cmd/gorename       # rename go identifiers
# go get -u github.com/go-delve/delve/cmd/dlv     # go debugger (delve)
