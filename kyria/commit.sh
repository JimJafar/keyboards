#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/qmk_firmware/keyboards/splitkb/kyria/keymaps/EvilJimJafar
git checkout eviljimjafar
git commit . -m"Update kyria layout"
git push

echo "Pulling in upstream changes"

cd ~/code/qmk_firmware
git checkout master
git fetch upstream
git pull upstream master
git push origin master
git checkout eviljimjafar
git pull origin master
git commit
git push

echo "Compiling firmware"

qmk compile -kb splitkb/kyria/rev2 -km EvilJimJafar

echo "Copying changes to Documents for syncing to NAS"

cp splitkb_kyria_rev2_EvilJimJafar.hex ~/Documents/keyboards/kyria/

cd keyboards/splitkb/kyria/keymaps/EvilJimJafar
cp config.h keymap.c rules.mk ~/Documents/keyboards/kyria/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/Documents/keyboards/kyria/
git add --all
git commit . -m"Update kyria split kb layout"
git push

echo "DONE"
