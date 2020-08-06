#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/qmk_firmware/keyboards/fc660c/keymaps/EvilJimJafar
git checkout fc660c
git commit . -m"Update fc660c layout"
git push

echo "Copying changes to OneDrive"

cp config.h keymap.c ~/OneDrive/Documents/keyboards/LeopoldFC660C/qmk/

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/OneDrive/Documents/keyboards/LeopoldFC660C/qmk/
git commit . -m"Update fc660c layout"
git push

echo "DONE"
