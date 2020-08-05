# Leopold FC660C QMK

Have installed the [Hasu custom controller](https://geekhack.org/index.php?topic=88439.0)

[Original keymap](https://i.imgur.com/fg89nez.jpg)

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

## Program layout instead of using the configurator

[Get set up](https://docs.qmk.fm/#/newbs_getting_started)

[config.h](https://beta.docs.qmk.fm/developing-qmk/qmk-reference/config_options)


```
# Create your keymap (only do this once) - will be created in ~/qmk_firmware/keyboards/fc660c/keymaps/EvilJimJafar
qmk new-keymap -kb fc660c

# Convert the JSON from Configurator as a starting point:
qmk json2c fc660c_jim.hex > ~/qmk_firmware/keyboards/fc660c/keymaps/EvilJimJafar/keymap.c

# Compile
qmk compile -kb fc660c -km EvilJimJafar

# Flash (put keyboard in bootloader mode first.)
qmk flash -kb fc660c -km EvilJimJafar
```

## Layout

### Layer 0

- Default layout with layer triggers.
- Top right keys: Play and delete.
- Quote key: Default behaviour.
- Hold Fn for layer 1
- Hold TAB for layer 2
- Hold Caps for layer 3

### Layer 1

- Function keys and coding symbols.
- Top right keys: Volume up and down.
- Quote key: Backtick.

### Layer 2

- Arrow keys, Home, End, PgUp and PgDown.
- Top right keys: Next and previous.
- Quote key: Tilde.

### Layer 3

- NumPad.
