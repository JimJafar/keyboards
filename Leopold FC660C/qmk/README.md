# Leopold FC660C QMK

Have installed the [Hasu custom controller](https://geekhack.org/index.php?topic=88439.0)

[QMK firmware Wiki](https://docs.qmk.fm/#/)

[Keymap editor](https://config.qmk.fm/#/fc660c/LAYOUT)

[Flash firmware](https://docs.qmk.fm/#/newbs_flashing)

## Install [QMK Toolbox](https://github.com/qmk/qmk_toolbox)

```
brew tap homebrew/cask-drivers
brew cask install qmk-toolbox
```

## Flash Manually

```
dfu-programmer atmega32u4 erase
dfu-programmer atmega32u4 flash ~/OneDrive/Documents/keyboards/Leopold\ FC660C/qmk/fc660c_jim.hex
dfu-programmer atmega32u4 reset
```
