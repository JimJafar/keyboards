#!/bin/zsh

echo "Pulling in upstream changes"

git pull
cd ~/code/qmk_firmware/keyboards
git checkout master
git pull
git pull --recurse-submodules upstream master
git checkout eviljimjafar
git pull

echo "Opening VS Code"

cd splitkb/kyria/keymaps/EvilJimJafar
code-insiders .

echo "DONE"
