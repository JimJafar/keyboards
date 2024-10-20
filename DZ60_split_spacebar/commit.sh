#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/code/qmk_firmware/keyboards/dz60/keymaps/EvilJimJafar
git checkout eviljimjafar
git commit . -m"Update dz60 split spacebar layout"
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

qmk compile -kb dz60 -km EvilJimJafar

echo "Copying changes to Documents for syncing to NAS"

cp dz60_EvilJimJafar.hex ~/Documents/keyboards/DZ60_split_spacebar/

cd keyboards/dz60/keymaps/EvilJimJafar
cp config.h keymap.c ~/Documents/keyboards/DZ60_split_spacebar/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/Documents/keyboards/DZ60_split_spacebar/
git add --all
git commit . -m"Update dz60 split spacebar layout"
git push

echo "DONE"
