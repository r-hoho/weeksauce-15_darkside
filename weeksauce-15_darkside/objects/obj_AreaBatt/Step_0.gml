if (place_meeting(x,y,obj_Battery)) {
	
	
	if (position_meeting(mouse_x,mouse_y,obj_AreaBatt)) { 
	
		//engine_connect.image_index = 1;
		engine_connect.battery_connect = instance_place(x,y,obj_Battery);
		exit;
	}
		
} else {
	
	engine_connect.battery_connect = noone;
	//engine_connect.image_index = 0;
	
}