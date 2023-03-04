if (mouse_check_button_pressed(mb_left)) {

	if (position_meeting(mouse_x,mouse_y,obj_Battery)) {

		show_debug_message("Hit");
		is_dragging = true;
		dragging_obj = instance_position(mouse_x,mouse_y,obj_Battery)
	
	} else { 
		
		show_debug_message("No");
	}
}

if (is_dragging == true) {
	

	dragging_obj.x = mouse_x;
	dragging_obj.y = mouse_y;
	
	//drag into Flip Area
	
	if (position_meeting(mouse_x,mouse_y,obj_Area1)) {
		
		dragging_obj.image_angle = 90;
		
	} else {
		
		dragging_obj.image_angle = 0;
		
	}
			
	
	// Dragging is done, release mb_left
	
	if (mouse_check_button_released(mb_left)) {
		
		is_dragging = false;
		
	}

}