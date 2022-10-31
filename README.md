# Stuff to do with building and modding mechanical keyboards

- DZ60 split spacebar layout
- YMDK NumPad
- splitkb Kyria rev2

## Getting started 

```sh
cd ~/code
git clone --recursive git@github.com:JimJafar/qmk_firmware.git
git checkout eviljimjafar
git pull --recurse-submodules origin master && git submodule update
git remote add upstream git@github.com:qmk/qmk_firmware.git

brew install qmk/qmk/qmk
qmk setup -H /Users/jim/code/qmk_firmware
```
