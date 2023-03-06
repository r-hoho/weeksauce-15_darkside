if (position_meeting(mouse_x,mouse_y,self)) {

	
	if (mouse_check_button_pressed(mb_left)) {
	
		show_debug_message(battery_connect_id);
		show_debug_message(engine_connect_id);
		engine_slot_open = false;
	
	}
}


if (engine_slot_open == false) {
	
	battery_connect_id.image_angle = 0;
	battery_connect_id.x = x+5;
	battery_connect_id.y = y;
	
	battery_connect_id.engine_connect_id = engine_connect_id;
	
	engine_connect_id.sprite_index = spr_Engine_3;

}

if (engine_slot_open == true) {
	
	engine_connect_id.sprite_index = spr_Engine_1;
}