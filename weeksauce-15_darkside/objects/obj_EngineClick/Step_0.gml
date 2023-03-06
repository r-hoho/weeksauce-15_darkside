if (position_meeting(mouse_x,mouse_y,self) && engine_slot_open == true) {

	
	if (mouse_check_button_pressed(mb_left)) {
	
		//show_debug_message(battery_connect_id);
		//show_debug_message(engine_connect_id);
		engine_slot_open = false;
		exit; //exit here to clear current mouse click event
	}
}


if (engine_slot_open == false) {
	
	battery_connect_id.image_angle = 0;
	battery_connect_id.x = x+5;
	battery_connect_id.y = y;
	
	battery_connect_id.engine_connect_id = engine_connect_id;
	
	engine_connect_id.sprite_index = spr_Engine_3;
}


if (position_meeting(mouse_x,mouse_y,self) && engine_slot_open == false) {

	
	if (mouse_check_button_pressed(mb_left)) {
	
		show_debug_message("Eject");
		
		scr_BatteryEject(battery_connect_id);
	
		engine_slot_open = true;
		global.ejecting = true;
	}
}


if (engine_slot_open == true) {
	
	engine_connect_id.sprite_index = spr_Engine_1;
}