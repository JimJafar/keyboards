#!/usr/bin/env bash

cd ~/code/qmk_firmware/keyboards/splitkb/kyria/keymaps/EvilJimJafar

# Compile
qmk compile -kb kyria -km EvilJimJafar

# Flash (put keyboard in bootloader mode first.)
qmk flash -kb kyria -km EvilJimJafar -bl dfu-split-right
