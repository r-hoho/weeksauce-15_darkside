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
			battery_connect_id.x = x+4;
			battery_connect_id.y = y+2;
			battery_connect_id.image_angle = 90;
			
			charging_status = true;
			
			if (lock_created == false) {
			_lock = instance_create_layer(x,y,"ins_Area",obj_ChargerLock);
			_lock.x = x+10;
			_lock.y = y+2;
			//_lock.image_angle = 90;
			lock_created = true;
			}
		}
	}
}


if (battery_connect_status == false) {
	
	image_index = 0;
	if(lock_created == true) {
		
		battery_connect_id = noone;
		instance_destroy(_lock);
		lock_created = false;
		charging_status = false;
		
		//scr_BatteryEject(battery_connect_id);
		//global.ejecting = true;
	}

}

if (charging_status == true ) {
	
	if (battery_connect_id.energy <= 100) {
		
		battery_connect_id.energy += 20/60;
	}
	
}

