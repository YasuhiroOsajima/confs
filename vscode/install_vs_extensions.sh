#!/bin/sh
 
# Visual Studio Code :: Package list
pkglist=(
DavidAnson.vscode-markdownlint
dsznajder.es7-react-js-snippets
esbenp.prettier-vscode
golang.go
mechatroner.rainbow-csv
MS-CEINTL.vscode-language-pack-ja
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode-remote.remote-wsl
PKief.material-icon-theme
rokoroku.vscode-theme-darcula
streetsidesoftware.code-spell-checker
vscodevim.vim
)

for var in ${pkglist[@]}
do
    code --install-extension $var
done