/*
 * Copyright 2021 NXP
 * SPDX-License-Identifier: MIT
 */

#include "lvgl/lvgl.h"
#include <stdio.h>
#include "gui_guider.h"
#include "events_init.h"


void setup_scr_screen(lv_ui *ui){

	//Write codes screen
	ui->screen = lv_obj_create(NULL, NULL);

	//Write codes screen_cont0
	ui->screen_cont0 = lv_cont_create(ui->screen, NULL);

	//Write style LV_CONT_PART_MAIN for screen_cont0
	static lv_style_t style_screen_cont0_main;
	
	lv_style_init(&style_screen_cont0_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_cont0_main
	lv_style_set_radius(&style_screen_cont0_main, LV_STATE_DEFAULT, 0);
	lv_style_set_bg_color(&style_screen_cont0_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_color(&style_screen_cont0_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_bg_grad_dir(&style_screen_cont0_main, LV_STATE_DEFAULT, LV_GRAD_DIR_HOR);
	lv_style_set_bg_opa(&style_screen_cont0_main, LV_STATE_DEFAULT, 255);
	lv_style_set_border_color(&style_screen_cont0_main, LV_STATE_DEFAULT, lv_color_make(0x99, 0x99, 0x99));
	lv_style_set_border_width(&style_screen_cont0_main, LV_STATE_DEFAULT, 1);
	lv_style_set_border_opa(&style_screen_cont0_main, LV_STATE_DEFAULT, 255);
	lv_style_set_pad_left(&style_screen_cont0_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_right(&style_screen_cont0_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_top(&style_screen_cont0_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_bottom(&style_screen_cont0_main, LV_STATE_DEFAULT, 0);
	lv_obj_add_style(ui->screen_cont0, LV_CONT_PART_MAIN, &style_screen_cont0_main);
	lv_obj_set_pos(ui->screen_cont0, 0, 0);
	lv_obj_set_size(ui->screen_cont0, 320, 240);
	lv_obj_set_click(ui->screen_cont0, false);
	lv_cont_set_layout(ui->screen_cont0, LV_LAYOUT_OFF);
	lv_cont_set_fit(ui->screen_cont0, LV_FIT_NONE);

	//Write codes screen_sw1
	ui->screen_sw1 = lv_switch_create(ui->screen, NULL);

	//Write style LV_SWITCH_PART_BG for screen_sw1
	static lv_style_t style_screen_sw1_bg;
	lv_style_init(&style_screen_sw1_bg);

	//Write style state: LV_STATE_DEFAULT for style_screen_sw1_bg
	lv_style_set_radius(&style_screen_sw1_bg, LV_STATE_DEFAULT, 100);
	lv_style_set_bg_color(&style_screen_sw1_bg, LV_STATE_DEFAULT, lv_color_make(0xd4, 0xd7, 0xd9));
	lv_style_set_bg_grad_color(&style_screen_sw1_bg, LV_STATE_DEFAULT, lv_color_make(0xd4, 0xd7, 0xd9));
	lv_style_set_bg_grad_dir(&style_screen_sw1_bg, LV_STATE_DEFAULT, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_sw1_bg, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_sw1, LV_SWITCH_PART_BG, &style_screen_sw1_bg);

	//Write style LV_SWITCH_PART_INDIC for screen_sw1
	static lv_style_t style_screen_sw1_indic;
	lv_style_init(&style_screen_sw1_indic);

	//Write style state: LV_STATE_DEFAULT for style_screen_sw1_indic
	lv_style_set_radius(&style_screen_sw1_indic, LV_STATE_DEFAULT, 100);
	lv_style_set_bg_color(&style_screen_sw1_indic, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_bg_grad_color(&style_screen_sw1_indic, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_bg_grad_dir(&style_screen_sw1_indic, LV_STATE_DEFAULT, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_sw1_indic, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_sw1, LV_SWITCH_PART_INDIC, &style_screen_sw1_indic);

	//Write style LV_SWITCH_PART_KNOB for screen_sw1
	static lv_style_t style_screen_sw1_knob;
	lv_style_init(&style_screen_sw1_knob);

	//Write style state: LV_STATE_DEFAULT for style_screen_sw1_knob
	lv_style_set_radius(&style_screen_sw1_knob, LV_STATE_DEFAULT, 100);
	lv_style_set_bg_color(&style_screen_sw1_knob, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_color(&style_screen_sw1_knob, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_dir(&style_screen_sw1_knob, LV_STATE_DEFAULT, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_sw1_knob, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_sw1, LV_SWITCH_PART_KNOB, &style_screen_sw1_knob);
	lv_obj_set_pos(ui->screen_sw1, 0, 220);
	lv_obj_set_size(ui->screen_sw1, 30, 15);
	lv_switch_set_anim_time(ui->screen_sw1, 600);

	//Write codes screen_img2
	ui->screen_img2 = lv_img_create(ui->screen, NULL);

	//Write style LV_IMG_PART_MAIN for screen_img2
	static lv_style_t style_screen_img2_main;
	lv_style_init(&style_screen_img2_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_img2_main
	lv_style_set_image_recolor(&style_screen_img2_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_image_recolor_opa(&style_screen_img2_main, LV_STATE_DEFAULT, 0);
	lv_style_set_image_opa(&style_screen_img2_main, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_img2, LV_IMG_PART_MAIN, &style_screen_img2_main);
	lv_obj_set_pos(ui->screen_img2, 0, 0);
	lv_obj_set_size(ui->screen_img2, 100, 60);
	lv_obj_set_click(ui->screen_img2, true);
	lv_img_set_src(ui->screen_img2,&_user_login_logo_alpha_100x60);
	lv_img_set_pivot(ui->screen_img2, 0,0);
	lv_img_set_angle(ui->screen_img2, 0);

	//Write codes screen_label3
	ui->screen_label3 = lv_label_create(ui->screen, NULL);
	lv_label_set_text(ui->screen_label3, "NOW TIME");
	lv_label_set_long_mode(ui->screen_label3, LV_LABEL_LONG_BREAK);
	lv_label_set_align(ui->screen_label3, LV_LABEL_ALIGN_CENTER);

	//Write style LV_LABEL_PART_MAIN for screen_label3
	static lv_style_t style_screen_label3_main;
	lv_style_init(&style_screen_label3_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_label3_main
	lv_style_set_radius(&style_screen_label3_main, LV_STATE_DEFAULT, 20);
	lv_style_set_bg_color(&style_screen_label3_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_color(&style_screen_label3_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_dir(&style_screen_label3_main, LV_STATE_DEFAULT, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_label3_main, LV_STATE_DEFAULT, 255);
	lv_style_set_text_color(&style_screen_label3_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0x00, 0x00));
	lv_style_set_text_font(&style_screen_label3_main, LV_STATE_DEFAULT, &lv_font_montserratMedium_12);
	lv_style_set_text_letter_space(&style_screen_label3_main, LV_STATE_DEFAULT, 2);
	lv_style_set_pad_left(&style_screen_label3_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_right(&style_screen_label3_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_top(&style_screen_label3_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_bottom(&style_screen_label3_main, LV_STATE_DEFAULT, 0);
	lv_obj_add_style(ui->screen_label3, LV_LABEL_PART_MAIN, &style_screen_label3_main);
	lv_obj_set_pos(ui->screen_label3, 103, 15);
	lv_obj_set_size(ui->screen_label3, 51, 0);

	//Write codes screen_imgbtn4
	ui->screen_imgbtn4 = lv_imgbtn_create(ui->screen, NULL);

	//Write style LV_IMGBTN_PART_MAIN for screen_imgbtn4
	static lv_style_t style_screen_imgbtn4_main;
	lv_style_init(&style_screen_imgbtn4_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_imgbtn4_main
	lv_style_set_text_color(&style_screen_imgbtn4_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0x00, 0x00));
	lv_style_set_image_recolor(&style_screen_imgbtn4_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_image_recolor_opa(&style_screen_imgbtn4_main, LV_STATE_DEFAULT, 0);
	lv_style_set_image_opa(&style_screen_imgbtn4_main, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_imgbtn4, LV_IMGBTN_PART_MAIN, &style_screen_imgbtn4_main);
	lv_obj_set_pos(ui->screen_imgbtn4, 289, 1);
	lv_obj_set_size(ui->screen_imgbtn4, 30, 25);
	lv_imgbtn_set_src(ui->screen_imgbtn4,LV_BTN_STATE_RELEASED,&_wifi_alpha_30x25);
	lv_imgbtn_set_src(ui->screen_imgbtn4,LV_BTN_STATE_PRESSED,&_wifi_alpha_30x25);
	lv_imgbtn_set_src(ui->screen_imgbtn4,LV_BTN_STATE_CHECKED_RELEASED,&_wifi1_alpha_30x25);
	lv_imgbtn_set_src(ui->screen_imgbtn4,LV_BTN_STATE_CHECKED_PRESSED,&_wifi1_alpha_30x25);
	lv_imgbtn_set_checkable(ui->screen_imgbtn4, true);

	//Write codes screen_cont6
	ui->screen_cont6 = lv_cont_create(ui->screen, NULL);

	//Write style LV_CONT_PART_MAIN for screen_cont6
	static lv_style_t style_screen_cont6_main;
	lv_style_init(&style_screen_cont6_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_cont6_main
	lv_style_set_radius(&style_screen_cont6_main, LV_STATE_DEFAULT, 0);
	lv_style_set_bg_color(&style_screen_cont6_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_color(&style_screen_cont6_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_dir(&style_screen_cont6_main, LV_STATE_DEFAULT, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_cont6_main, LV_STATE_DEFAULT, 255);
	lv_style_set_border_color(&style_screen_cont6_main, LV_STATE_DEFAULT, lv_color_make(0x99, 0x99, 0x99));
	lv_style_set_border_width(&style_screen_cont6_main, LV_STATE_DEFAULT, 1);
	lv_style_set_border_opa(&style_screen_cont6_main, LV_STATE_DEFAULT, 255);
	lv_style_set_pad_left(&style_screen_cont6_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_right(&style_screen_cont6_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_top(&style_screen_cont6_main, LV_STATE_DEFAULT, 0);
	lv_style_set_pad_bottom(&style_screen_cont6_main, LV_STATE_DEFAULT, 0);
	lv_obj_add_style(ui->screen_cont6, LV_CONT_PART_MAIN, &style_screen_cont6_main);
	lv_obj_set_pos(ui->screen_cont6, 260, 199);
	lv_obj_set_size(ui->screen_cont6, 60, 40);
	lv_obj_set_click(ui->screen_cont6, false);
	lv_cont_set_layout(ui->screen_cont6, LV_LAYOUT_OFF);
	lv_cont_set_fit(ui->screen_cont6, LV_FIT_NONE);

	//Write codes screen_led6
	ui->screen_led6 = lv_led_create(ui->screen, NULL);

	//Write style LV_LED_PART_MAIN for screen_led6
	static lv_style_t style_screen_led6_main;
	lv_style_init(&style_screen_led6_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_led6_main
	lv_style_set_radius(&style_screen_led6_main, LV_STATE_DEFAULT, 20);
	lv_style_set_bg_color(&style_screen_led6_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0x00, 0x00));
	lv_style_set_bg_grad_color(&style_screen_led6_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0x00, 0x00));
	lv_style_set_bg_grad_dir(&style_screen_led6_main, LV_STATE_DEFAULT, LV_GRAD_DIR_NONE);
	lv_style_set_bg_opa(&style_screen_led6_main, LV_STATE_DEFAULT, 255);
	lv_style_set_shadow_color(&style_screen_led6_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_shadow_width(&style_screen_led6_main, LV_STATE_DEFAULT, 0);
	lv_style_set_border_color(&style_screen_led6_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_border_width(&style_screen_led6_main, LV_STATE_DEFAULT, 0);
	lv_style_set_border_opa(&style_screen_led6_main, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_led6, LV_LED_PART_MAIN, &style_screen_led6_main);
	lv_obj_set_pos(ui->screen_led6, 264, 213);
	lv_obj_set_size(ui->screen_led6, 15, 15);
	lv_led_set_bright(ui->screen_led6, 200);

	//Write codes screen_led7
	ui->screen_led7 = lv_led_create(ui->screen, NULL);

	//Write style LV_LED_PART_MAIN for screen_led7
	static lv_style_t style_screen_led7_main;
	lv_style_init(&style_screen_led7_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_led7_main
	lv_style_set_radius(&style_screen_led7_main, LV_STATE_DEFAULT, 20);
	lv_style_set_bg_color(&style_screen_led7_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0xff, 0x62));
	lv_style_set_bg_grad_color(&style_screen_led7_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_bg_grad_dir(&style_screen_led7_main, LV_STATE_DEFAULT, LV_GRAD_DIR_NONE);
	lv_style_set_bg_opa(&style_screen_led7_main, LV_STATE_DEFAULT, 255);
	lv_style_set_shadow_color(&style_screen_led7_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_shadow_width(&style_screen_led7_main, LV_STATE_DEFAULT, 0);
	lv_style_set_border_color(&style_screen_led7_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_border_width(&style_screen_led7_main, LV_STATE_DEFAULT, 0);
	lv_style_set_border_opa(&style_screen_led7_main, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_led7, LV_LED_PART_MAIN, &style_screen_led7_main);
	lv_obj_set_pos(ui->screen_led7, 287, 214);
	lv_obj_set_size(ui->screen_led7, 15, 15);
	lv_led_set_bright(ui->screen_led7, 200);

	//Write codes screen_led8
	ui->screen_led8 = lv_led_create(ui->screen, NULL);

	//Write style LV_LED_PART_MAIN for screen_led8
	static lv_style_t style_screen_led8_main;
	lv_style_init(&style_screen_led8_main);

	//Write style state: LV_STATE_DEFAULT for style_screen_led8_main
	lv_style_set_radius(&style_screen_led8_main, LV_STATE_DEFAULT, 20);
	lv_style_set_bg_color(&style_screen_led8_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0x40, 0xff));
	lv_style_set_bg_grad_color(&style_screen_led8_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0x37, 0xff));
	lv_style_set_bg_grad_dir(&style_screen_led8_main, LV_STATE_DEFAULT, LV_GRAD_DIR_NONE);
	lv_style_set_bg_opa(&style_screen_led8_main, LV_STATE_DEFAULT, 255);
	lv_style_set_shadow_color(&style_screen_led8_main, LV_STATE_DEFAULT, lv_color_make(0x00, 0xa1, 0xb5));
	lv_style_set_shadow_width(&style_screen_led8_main, LV_STATE_DEFAULT, 0);
	lv_style_set_border_color(&style_screen_led8_main, LV_STATE_DEFAULT, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_border_width(&style_screen_led8_main, LV_STATE_DEFAULT, 0);
	lv_style_set_border_opa(&style_screen_led8_main, LV_STATE_DEFAULT, 255);
	lv_obj_add_style(ui->screen_led8, LV_LED_PART_MAIN, &style_screen_led8_main);
	lv_obj_set_pos(ui->screen_led8, 305, 213);
	lv_obj_set_size(ui->screen_led8, 15, 15);
	lv_led_set_bright(ui->screen_led8, 200);

	//Init events for screen
	events_init_screen(ui);
}
