#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/code/qmk_firmware/keyboards/ymdk/np24/u4rgb6/keymaps/EvilJimJafar
git checkout eviljimjafar
git commit . -m"Update YMDK NumPad layout"
git push

echo "Pulling in upstream changes"

git fetch upstream
git checkout master
git pull --recurse-submodules upstream master
make git-submodule
git push
git checkout eviljimjafar
git pull origin master
git commit
git push

echo "Compiling firmware"

qmk compile -kb ymdk/np24/u4rgb6 -km EvilJimJafar

echo "Copying changes to Documents for syncing to NAS"

cp ymdk_np24_u4rgb6_EvilJimJafar.hex ~/Documents/keyboards/YMDK_NumPad/

cd keyboards/ymdk/np24/u4rgb6/keymaps/EvilJimJafar
cp keymap.c ~/Documents/keyboards/YMDK_NumPad/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/Documents/keyboards/YMDK_NumPad/
git add --all
git commit . -m"Update YMDK NumPad layout"
git push

echo "DONE"
