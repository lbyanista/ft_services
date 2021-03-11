#!/bin/bash
echo "$(tput setaf 1)$(tput bold)TheEyes SH"
echo "$(tput setaf 2)$(tput bold)install Homebrew ... $(tput sgr 0)"
curl -fsSL https://raw.githubusercontent.com/hakamdev/42homebrew/master/install.sh | zsh
echo "$(tput setaf 2)$(tput bold)install minikube docker $(tput sgr 0)"
brew install minikube docker
echo "$(tput setaf 2)$(tput bold)create and start minikube on VM $(tput sgr 0)"
minikube start --driver=virtualbox
