if (place_meeting(x,y,obj_Battery)) {
	
	
	if (position_meeting(mouse_x,mouse_y,obj_Engine)) {
		
		battery_connect_status = true;	
	}
	
	
}


if (!place_meeting(x,y,obj_Battery)) {
				
			battery_connect_status = false;
		
}


if (battery_connect_status == true && click_created == false) {

	_click = instance_create_layer(x,y,"ins_Battery",obj_EngineClick);
	_click.battery_connect_id = instance_place(x,y,obj_Battery);
	_click.engine_connect_id = id;
	
	click_created = true;
	
	
}

if (battery_connect_status == false && click_created == true) {
	
	instance_destroy(_click);
	click_created = false;
	sprite_index = spr_Engine_1;
	animation_grab = false;
	
}


//Animation
if (sprite_index == spr_Engine_1) {

	if (image_index <= 3) {image_index += 40/60;}
}

if (sprite_index == spr_Engine_3) {
	
	if (animation_grab == false) {
	
	image_index = 0;
	animation_grab = true;
	}
	
	if (image_index <= 3) {image_index += 30/60;}
	
}





