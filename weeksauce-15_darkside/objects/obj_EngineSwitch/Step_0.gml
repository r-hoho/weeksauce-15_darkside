if (power_state == true) {
	
	//check if Battery-In 
	if (engine_connect_id.sprite_index == spr_Engine_3) {
	
		image_index = 1;
		lane_connection.visible = true;
	}
	
	//if Battery remove
	if (engine_connect_id.sprite_index != spr_Engine_3) {
		
		power_state = false;
	}
}


if (power_state == false) {
	
	//show_debug_message("Off-"+string(lane_connection))
	image_index = 0;
	lane_connection.visible = false;
	
	
}