#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/qmk_firmware/keyboards/ymdk/np24/u4rgb6/keymaps/EvilJimJafar
git checkout eviljimjafar
git commit . -m"Update YMDK NumPad layout"
git push

echo "Pulling in upstream changes"
git checkout master
git fetch upstream
git pull upstream master
git push origin master
git checkout eviljimjafar
git pull origin master
git commit
git push

echo "Copying changes to NextCloud"

cp config.h keymap.c ~/Nextcloud/Documents/keyboards/YMDK_NumPad/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/Nextcloud/Documents/keyboards/YMDK_NumPad/
git commit . -m"Update YMDK NumPad layout"
git push

echo "DONE"
