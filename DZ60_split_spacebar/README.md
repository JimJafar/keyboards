# DZ60 split spacebar QMK

[My firmware keymap](https://github.com/EvilJimJafar/qmk_firmware/tree/dz60_split_spacebar/keyboards/dz60/keymaps/EvilJimJafar)

Local: `~/qmk_firmware/keyboards/dz60/keymaps/EvilJimJafar`

[Layout](http://www.keyboard-layout-editor.com/#/gists/c4e5f0c1c0d81692f2852a62867e75e8)

[QMK firmware Wiki](https://docs.qmk.fm/#/)

[Keymap editor](https://config.qmk.fm/#/dztech/dz60rgb_ansi/v2/LAYOUT_60_ansi)

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
qmk new-keymap -kb dztech/dz60rgb_ansi/v2
cd ~/qmk_firmware
git checkout dztech/dz60rgb_ansi/v2

# Create your keymap (only do this once when you get a new keyboard) - will be created in ~/qmk_firmware/keyboards/dztech/dz60rgb_ansi/v2/keymaps/EvilJimJafar
qmk new-keymap -kb dztech/dz60rgb_ansi/v2

# Convert the JSON from Configurator as a starting point (or copy one of the existing community layouts):
qmk json2c dz60rgbv2_jim.hex > ~/qmk_firmware/keyboards/dztech/dz60rgb_ansi/v2/keymaps/EvilJimJafar/keymap.c

# Compile
qmk compile -kb dztech/dz60rgb_ansi/v2 -km EvilJimJafar

# Flash (put keyboard in bootloader mode first.)
qmk flash -kb dztech/dz60rgb_ansi/v2 -km EvilJimJafar

# Commit both qmk fork and this repo
~/OneDrive/Documents/keyboards/DZ60RGBV2/qmk/commit.sh
```

## Layout

### Layer 0

- Default layout with layer triggers.
- Quote key: Default behaviour.

```
,------------------------------------------------------------------------------------------
| Esc |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  0  |  -  |  =  | Backspace |
|-----------------------------------------------------------------------------------------+
| Tab    |  Q  |  W  |  E  |  R  |  T  |  Y  |  U  |  I  |  O  |  P  |  [  |  ]  |   \    |
|-----------------------------------------------------------------------------------------+
| Ctrl    |  A  |  S  |  D  |  F  |  G  |  H  |  J  |  K  |  L  |  ;  |  '  |    Enter    |
|-----------------------------------------------------------------------------------------+
| Shift      |  Z  |  X  |  C  |  V  |  B  |  N  |  M  |  ,  |  .  |   Shift  | Up  | L4  |
+-----------------------------------------------------------------------------------------+
| Caps  | Alt   |  Gui  |      L1     |  L2  |     Space    | L3  | |>  | Lft | Dwn | Rgt |
`-----------------------------------------------------------------------------------------´
```

### Layer 1

- Function keys and coding symbols.
- Quote key: Backtick.

```
,-----------------------------------------------------------------------------------------.
|  `  | F1  | F2  | F3  | F4  | F5  | F6  | F7  | F8  | F9  | F10 | F11 | F12 |    Del    |
|-----------------------------------------------------------------------------------------+
|        |     |     |     |     |     |     |  [  |     |     |  ]  |     |     |        |
|-----------------------------------------------------------------------------------------+
|         |     |     |     |     |     |     |  {  |  (  |  )  |  }  |  `  |             |
|-----------------------------------------------------------------------------------------+
|            |     |     |     |     |     |     |     |     |     |          | VUp | Mut |
+-----------------------------------------------------------------------------------------+
|       |       |       |             |      |              |     | |>  | <<  | VDn | >>  |
`-----------------------------------------------------------------------------------------´
```

### Layer 2

- Arrow keys, Home, End, PgUp and PgDown.
- Quote key: Tilde.

```
,-----------------------------------------------------------------------------------------.
|     |     |     |     |     |     |     |     |     |     |     |     |     |           |
|-----------------------------------------------------------------------------------------+
|        |     |     |     |     |     |     | Home| Up  | End |     |     |     |        |
|-----------------------------------------------------------------------------------------+
|         |     |     |     |     |     |     | Lft | Dwn | Rgt |     |  ~  |             |
|-----------------------------------------------------------------------------------------+
|            |     |     |     |     |     | PgDn|     | PgUp|     |          |     |     |
+-----------------------------------------------------------------------------------------+
|       |       |       |             |      |              |     |     |     |     |     |
`-----------------------------------------------------------------------------------------´
```

### Layer 3

- NumPad.

```
,-----------------------------------------------------------------------------------------.
|     |     |     |     |     |     |     |     |  /  |  *  |  -  |     |     | Backspace |
|-----------------------------------------------------------------------------------------+
|        |     |     |     |     |     |     |  7  |  8  |  9  |  +  |     |     |        |
|-----------------------------------------------------------------------------------------+
|         |     |     |     |     |     |     |  4   |  5  |  6  |  ,  |     |    Enter   |
|-----------------------------------------------------------------------------------------+
|            |     |     |     |     |     |     |  1  |  2  |  3  |    =     |     |     |
+-----------------------------------------------------------------------------------------+
|       |       |       |             |      |       0      |  .  |     |     |     |     |
`-----------------------------------------------------------------------------------------´
```

### Layer 4

- RGB keys + Reset.

```
,-----------------------------------------------------------------------------------------.
| TGL | HUI | HUD | SAI | SAD | VAI | VAD | MOD | SPI | SPD |     |     |     |           |
|-----------------------------------------------------------------------------------------+
|        |     |     |     |     |     |     |     |     |     |     |     |     |  Reset |
|-----------------------------------------------------------------------------------------+
|         |     |     |     |     |     |     |     |     |     |     |  ~  |             |
|-----------------------------------------------------------------------------------------+
|            |     |     |     |     |     |     |     |     |     |          |     |     |
+-----------------------------------------------------------------------------------------+
|       |       |       |             |      |              |     |     |     |     |     |
`-----------------------------------------------------------------------------------------´
```