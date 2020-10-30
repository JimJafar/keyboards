#include QMK_KEYBOARD_H

#define _DEFAULT 0
#define _CODING 1
#define _NAV 2
#define _NUMPAD 3
#define _RGB 4

// Combos
// Note: When adding a combo, increment COMBO_COUNT in config.h

enum combo_events {
  SWITCH_WINDOW
};

const uint16_t PROGMEM switch_window_combo[] = {KC_LGUI, KC_ESC, COMBO_END};

combo_t key_combos[COMBO_COUNT] = {
  [SWITCH_WINDOW] = COMBO_ACTION(switch_window_combo)
};

void process_combo_event(uint8_t combo_index, bool pressed) {
  switch(combo_index) {
    case SWITCH_WINDOW:
      if (pressed) {
        tap_code16(LGUI(KC_GRV));
      }
      break;
  }
}

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_DEFAULT] = LAYOUT_60_ansi(
        KC_ESC,                      KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,        KC_MINS, KC_EQL,  KC_BSPC,
        LT(_NAV,KC_TAB),             KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,        KC_LBRC, KC_RBRC, KC_BSLS,
        KC_LCTRL,                        KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN,     KC_QUOT,           KC_ENT,
        KC_LSFT,                                  KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_N,    KC_M,    KC_COMM, KC_DOT,RSFT_T(KC_SLSH),          KC_RSFT,
        LT(_NUMPAD,KC_CAPS),          KC_LALT, KC_LGUI,                            KC_SPC,                                MO(_CODING), KC_RCTL,   KC_NO, MO(_RGB)
    ),
    [_CODING] = LAYOUT_60_ansi(
         KC_GRV,   KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,  KC_F10,  KC_F11,  KC_F12,  KC_DEL,
        _______, _______, _______, _______, _______, _______, _______, KC_LBRC, _______, _______, KC_RBRC, _______, _______, _______,
        _______, _______, _______, _______, _______, _______, _______, KC_LCBR, KC_LPRN, KC_RPRN, KC_RCBR,  KC_GRV,          _______,
        _______,          _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,          _______,
        _______, _______, _______,                            _______,                            _______, _______,   KC_NO, _______
    ),
    [_NAV] = LAYOUT_60_ansi(
        _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, KC_DEL,
        _______, _______, _______, _______, _______, _______, _______, KC_HOME, _______, _______,  KC_END, KC_TILD, _______, _______,
        _______, _______, _______, _______, _______, _______, _______, KC_LEFT,   KC_UP, KC_DOWN, KC_RGHT,  KC_GRV,          _______,
        _______,          _______, _______, _______, _______, _______, _______, KC_PGUP, KC_PGDN, _______, _______,          _______,
        _______, _______, _______,                            _______,                            _______, _______, _______, _______
    ),
    [_NUMPAD] = LAYOUT_60_ansi(
          KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NLCK, KC_PSLS, KC_PAST, KC_PMNS, KC_NO,   KC_NO, KC_BSPC,
          KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_P7,   KC_P8,   KC_P9,   KC_PPLS, KC_NO,   KC_NO,   KC_NO,
          KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_P4,   KC_P5,   KC_P6,   KC_PCMM, KC_NO,          KC_PENT,
          KC_NO,            KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_NO,   KC_P1,   KC_P2,     KC_P3, KC_PEQL,          KC_NO,
          KC_NO,   KC_NO,   KC_NO,                              KC_P0,                              KC_PDOT,  KC_NO,  KC_NO,   KC_NO
    ),
    [_RGB] = LAYOUT_60_ansi(
        RGB_TOG, RGB_HUI, RGB_HUD, RGB_SAI, RGB_SAD, RGB_VAI, RGB_VAD, RGB_MOD, RGB_SPI, RGB_SPD, _______, _______, _______, _______,
        _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,   RESET,
        _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,          _______,
        _______,          _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,          _______,
        _______, _______, _______,                            _______,                            _______, _______,   KC_NO, _______
    )
};
