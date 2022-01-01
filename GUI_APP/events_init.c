/*
 * Copyright 2021 NXP
 * SPDX-License-Identifier: MIT
 */

#include "events_init.h"
#include <stdio.h>
#include "lvgl/lvgl.h"
//#include "lv_switch.h" //获取开关状态
#include "gizwits_product.h"
#include "common.h"
#include "main.h"

void events_init(lv_ui *ui)
{
}

static void screen_sw1event_handler(lv_obj_t * obj, lv_event_t event)
{
	switch (event)
	{
	case LV_EVENT_VALUE_CHANGED:
	{
		
		if(lv_switch_get_state(obj)){
			auto_flag |= 0x01;
			 currentDataPoint.valueLed_Auto = 0x01; //上报app
		}
		else{
			auto_flag &= 0xFE;
		    currentDataPoint.valueLed_Auto = 0x00; //上报app
		}
	}
		break;
	default:

		break;
	}
}

static void screen_imgbtn4event_handler(lv_obj_t * obj, lv_event_t event)
{
	switch (event)
	{
	case LV_EVENT_PRESSED:
	{
		 #if !MODULE_TYPE
		gizwitsSetMode(WIFI_AIRLINK_MODE);
		 #endif
	}
		break;
	default:
		break;
	}
}

void events_init_screen(lv_ui *ui)
{
	lv_obj_set_event_cb(ui->screen_sw1, screen_sw1event_handler);
	lv_obj_set_event_cb(ui->screen_imgbtn4, screen_imgbtn4event_handler);
}
