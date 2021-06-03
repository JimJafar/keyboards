#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/qmk_firmware/keyboards/dz60/keymaps/EvilJimJafar
git checkout eviljimjafar
git commit . -m"Update dz60 split spacebar layout"
git push

echo "Pulling in upstream changes"
git checkout master
git fetch upstream
git pull upstream master
git push origin master
git checkout dz60_split_spacebar
git pull origin master
git commit
git push

echo "Copying changes to NextCloud"

cp config.h keymap.c ~/Nextcloud/Documents/keyboards/DZ60_split_spacebar/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/Nextcloud/Documents/keyboards/DZ60_split_spacebar/
git commit . -m"Update dz60 split spacebar layout"
git push

echo "DONE"
