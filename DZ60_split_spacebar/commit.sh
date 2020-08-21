#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/qmk_firmware/keyboards/dz60/keymaps/EvilJimJafar
git checkout dz60_split_spacebar
git commit . -m"Update dz60 split spacebar layout"
git push

echo "Copying changes to OneDrive"

cp config.h keymap.c ~/OneDrive/Documents/keyboards/DZ60_split_spacebar/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/OneDrive/Documents/keyboards/DZ60_split_spacebar/
git commit . -m"Update dz60 split spacebar layout"
git push

echo "DONE"
