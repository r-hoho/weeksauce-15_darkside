if (place_meeting(x,y,obj_Battery)) {
	
	if (position_meeting(mouse_x,mouse_y,obj_Charger)) {
	
		battery_connect_status = true;
			
	}
}


if (!place_meeting(x,y,obj_Battery)) {
	
	battery_connect_status = false;	
	
}

if (battery_connect_status == true) {
	
	image_index = 1;
	battery_connect_id = instance_place(x,y,obj_Battery)
	
	if (position_meeting(mouse_x,mouse_y,self)) {

		if (mouse_check_button_pressed(mb_left)) {
			
			show_debug_message("TestCharged")
			battery_connect_id.x = x-25;
			battery_connect_id.y = y-10;
			battery_connect_id.image_angle = 90;
			
			charging_status = true;
			
			if (lock_created == false) {
			_lock = instance_create_layer(x,y,"ins_Area",obj_ChargerLock);
			_lock.x = x-25;
			_lock.y = y-10;
			_lock.image_angle = 90;
			lock_created = true;
			}
		}
	}
}


if (battery_connect_status == false && lock_created = true) {
	
	charging_status = false;
	image_index = 0;
	battery_connect_id = noone;
	instance_destroy(_lock);
	lock_created = false;

}

if (charging_status == true ) {
	
	if (battery_connect_id.energy <= 100) {
		
		battery_connect_id.energy += 10/60;
	}
	
}
