if (status == true && run == false) {
	
	show_debug_message("On-"+string(lane_connection))
	image_index = 1;
	lane_connection.visible = true;
	
	run = true;
	
	
	
}


if (status == false && run == false) {
	
	show_debug_message("Off-"+string(lane_connection))
	image_index = 0;
	lane_connection.visible = false;
	
	
	run = true;
	
}