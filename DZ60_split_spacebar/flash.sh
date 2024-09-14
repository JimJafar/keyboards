#!/usr/bin/env bash

cd ~/code/qmk_firmware/keyboards/dz60/keymaps/EvilJimJafar

# Compile
qmk compile -kb dz60 -km EvilJimJafar

# Flash (put keyboard in bootloader mode first.)
qmk flash -kb dz60 -km EvilJimJafar
