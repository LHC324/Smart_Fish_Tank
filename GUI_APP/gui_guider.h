/*
 * Copyright 2021 NXP
 * SPDX-License-Identifier: MIT
 */

#ifndef GUI_GUIDER_H
#define GUI_GUIDER_H
#ifdef __cplusplus
extern "C" {
#endif

#include "lvgl/lvgl.h"
#include "guider_fonts.h"

typedef struct
{
	lv_obj_t *screen;
	lv_obj_t *screen_cont0;
	lv_obj_t *screen_sw1;
	lv_obj_t *screen_img2;
	lv_obj_t *screen_label3;
	lv_obj_t *screen_imgbtn4;
	lv_obj_t *screen_imgbtn4_label;
	lv_obj_t *screen_cont6;
	lv_obj_t *screen_led6;
	lv_obj_t *screen_led7;
	lv_obj_t *screen_led8;
}lv_ui;

void setup_ui(lv_ui *ui);
extern lv_ui guider_ui;
void setup_scr_screen(lv_ui *ui);
LV_IMG_DECLARE(_user_login_logo_alpha_100x60);
LV_IMG_DECLARE(_wifi1_alpha_30x25);
LV_IMG_DECLARE(_wifi_alpha_30x25);

#ifdef __cplusplus
}
#endif
#endif

