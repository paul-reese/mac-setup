#!/usr/bin/env bash

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

brew doctor

brew update 
brew tap caskroom/cask
brew tap cloudfoundry/tap
brew tap AdoptOpenJDK/openjdk

brew cask install 1password
brew cask install adoptopenjdk
brew cask install alfred
brew cask install atom
brew cask install cf-cli
#brew cask install google-chrome
brew cask install google-cloud-sdk
#brew cask install google-backup-and-sync
brew cask install clipy
brew cask install docker
brew cask install docker-toolbox
brew cask install insomnia
brew cask install java
brew cask install minikube
#brew cask install slack
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install sourcetree
brew cask install skitch
brew cask install spectacle
brew cask install sublime-text
brew cask install totalfinder
brew cask install visual-studio-code

brew install fish
brew install git
brew install hub
brew install kubectl
brew install kubectx
brew install kustomize
brew install dep
brew install kubernetes-helm
brew install wget
brew install watch
brew install jq
brew install awscli
brew install hugo
brew install telnet
brew install vagrant-completion
brew install npm
brew install python
brew install tree
brew install vim
brew install zsh

npm install -g grpcc

python -m pip install --upgrade setuptools

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

brew install go

go get golang.org/x/tools/cmd/godoc

go get github.com/golang/lint/golint
