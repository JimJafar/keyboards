# Leopold FC660C TMK

Have installed the [Hasu custom controller](https://geekhack.org/index.php?topic=88439.0)

[TMK firmware Wiki](https://github.com/tmk/tmk_keyboard/wiki)

[Keymap editor Wiki](https://github.com/tmk/tmk_keyboard/wiki/Keymap-Editor)

[Keymap editor](http://www.tmk-kbd.com/tmk_keyboard/editor/)

[Flash firmware](https://github.com/tmk/tmk_keyboard/wiki#flash-firmware)

```
dfu-programmer atmega32u4 erase
dfu-programmer atmega32u4 flash ~/OneDrive/Documents/keyboards/Leopold\ FC660C/tmk/FC660C_jim.hex
dfu-programmer atmega32u4 reset
```
