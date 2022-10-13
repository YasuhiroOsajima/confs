#!/bin/sh
 
# Visual Studio Code :: Package list
pkglist=(
csstools.postcss
Dart-Code.dart-code
Dart-Code.flutter
DavidAnson.vscode-markdownlint
dbaeumer.vscode-eslint
dsznajder.es7-react-js-snippets
eamodio.gitlens
esbenp.prettier-vscode
foxundermoon.shell-format
hediet.vscode-drawio
jebbs.plantuml
mads-hartmann.bash-ide-vscode
magicstack.MagicPython
mechatroner.rainbow-csv
mhutchie.git-graph
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
ms-vsliveshare.vsliveshare
PKief.material-icon-theme
rokoroku.vscode-theme-darcula
samuelcolvin.jinjahtml
streetsidesoftware.code-spell-checker
styled-components.vscode-styled-components
timonwong.shellcheck
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
vscodevim.vim
wholroyd.jinja
yzane.markdown-pdf
yzhang.markdown-all-in-one
)

for var in ${pkglist[@]}
do
    code --install-extension $var
done