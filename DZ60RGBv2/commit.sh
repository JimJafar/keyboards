#!/usr/bin/env bash

echo "Committing and pushing changes to EvilJimJafar/qmk_firmware"

cd ~/qmk_firmware/keyboards/dztech/dz60rgb_ansi/keymaps/EvilJimJafar
git checkout dz60rgbv2
git commit . -m"Update dz60rgbv2 layout"
git push

echo "Copying changes to OneDrive"

cp config.h keymap.c ~/OneDrive/Documents/keyboards/DZ60RGBV2/
cp  ../../v2/rules.mk ~/OneDrive/Documents/keyboards/DZ60RGBV2/v2

echo "Committing and pushing changes to EvilJimJafar/keyboards"

cd ~/OneDrive/Documents/keyboards/DZ60RGBV2/
git commit . -m"Update dz60rgbv2 layout"
git push

echo "DONE"
