# DZ60 split spacebar QMK

[My firmware keymap](https://github.com/EvilJimJafar/qmk_firmware/tree/eviljimjafar/keyboards/ymdk/np24/u4rgb6/keymaps/EvilJimJafar)

Local: `~/qmk_firmware/keyboards/ymdk/np24/u4rgb6/keymaps/EvilJimJafar`

[QMK firmware Wiki](https://docs.qmk.fm/#/)

[Flash firmware](https://docs.qmk.fm/#/newbs_flashing)

## Install [QMK Toolbox](https://github.com/qmk/qmk_toolbox)

```
brew tap homebrew/cask-drivers
brew cask install qmk-toolbox
```

## Program layout

[Reference](https://beta.docs.qmk.fm/developing-qmk/qmk-reference/)

```
# Get set up and connect to your fork.
brew install qmk/qmk/qmk
qmk new-keymap -kb ymdk/np24/u4rgb6
cd ~/qmk_firmware
git checkout ymdk/np24/u4rgb6

# Compile
qmk compile -kb ymdk/np24/u4rgb6 -km EvilJimJafar

### Note:
If you get `tmk_core/protocol/lufa.mk:14: lib/lufa/LUFA/makefile: No such file or directory`, run `make git-submodule` in ~/qmk_firmware

# Flash (put keyboard in bootloader mode first.)
qmk flash -kb ymdk/np24/u4rgb6 -km EvilJimJafar

# Commit both qmk fork and this repo
~/Nextcloud/Documents/keyboards/YMDK_NumPad/qmk/commit.sh
```

## Layout

### Base Layer (0)

- Default layout with layer triggers.

```
             .-----.                
             | USB |                
,-------------------------------.   
| Fn 1  | Fn 2  | Fn 3  | Fn 4  |   
|       |       | Mod(2)| Mod(3)|   
|-------+-------+-------+-------|   
| Num   | /     | *     | -     |   
| Lock  |       |       |       |   
|-------+-------+-------+-------|   
| 7     | 8     | 9     | +     |   
|       |       |       |       |   
|-------+-------+-------+-------|   
| 4     | 5     | 6     | +     |   
|       |       |       |       |   
|-------+-------+-------+-------|   
| 1     | 2     | 3     | Ent   |   
|       |       |       |       |   
|-------+-------+-------+-------|   
| 0     | 0     | .     | Ent   |   
|       |       |       |       |   
`-------------------------------'   
```

### NumLock Layer (1)

```
             .-----.             
             | USB |             
,-------------------------------.
|       |       |       |       |
|       |       |       |       |
|-------+-------+-------+-------|
| Num   |       |       |       |
| Lock  |       |       |       |
|-------+-------+-------+-------|
|       |       |       |       |
| Home  | Up    | PgUp  |       |
|-------+-------+-------+-------|
|       |       |       |       |
| Left  |       | Right |       |
|-------+-------+-------+-------|
|       |       |       |       |
| End   | Down  | PgDn  |       |
|-------+-------+-------+-------|
|       |       |       |       |
| Ins   | Ins   | Del   |       |
`-------------------------------'
```

### Backlight Layer (2)

```
             .-----.             
             | USB |             
,-------------------------------.
|       |       |       |       |
|       |       |       |       |
|-------+-------+-------+-------|
|       |       |       |       |
|       |       |       |       |
|-------+-------+-------+-------|
|       | BL    |       | BL    |
|       | On    |       | Inc   |
|-------+-------+-------+-------|
|       | BL    |       | BL    |
|       | Togg  |       | Inc   |
|-------+-------+-------+-------|
|       | BL    |       | BL    |
|       | Off   |       | Dec   |
|-------+-------+-------+-------|
| BL    |       |       | BL    |
| Breath|       |       | Dec   |
`-------------------------------'
```

### RGB Layer (3)

```
             .-----.            
             | USB |
,-------------------------------.
| Reset |       |       |       |
|       |       |       |       |
|-------+-------+-------+-------|
|       |       |       |       |
|       |       |       |       |
|-------+-------+-------+-------|
|       |Mode   |       |Bright |
|       |Forward|       |Inc    |
|-------+-------+-------+-------|
|       |Toggle |       |Bright |
|       |On/Off |       |Inc    |
|-------+-------+-------+-------|
|       |Mode   |       |Bright |
|       |Back   |       |Dec    |
|-------+-------+-------+-------|
|Mode   |       |       |Bright |
|Rainbow|       |       |Dec    |
`-------------------------------'
```
