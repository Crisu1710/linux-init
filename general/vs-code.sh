#!/bin/bash

install-vscode-extension () {
  code --install-extension ms-vscode-remote.remote-ssh 
  code --install-extension ipedrazas.kubernetes-snippets
  code --install-extension kennylong.kubernetes-yaml-formatter
  code --install-extension eamodio.gitlens
  code --install-extension golang.Go
  code --install-extension ms-python.python 
  code --install-extension redhat.vscode-yaml
}

install-vscode-extension
