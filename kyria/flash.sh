#!/usr/bin/env bash

cd ~/code/qmk_firmware
git checkout eviljimjafar

# Compile
qmk compile -kb splitkb/kyria/rev2 -km EvilJimJafar

# Flash (put keyboard in bootloader mode first.)
qmk flash -kb splitkb/kyria/rev2 -km EvilJimJafar
