if (battery_connect == noone)  { image_index = 0;}
if (battery_connect != noone ) { image_index = 1;}



if (battery_plugin == false) {
	
	if (position_meeting(mouse_x,mouse_y,obj_Engine)) {
	
		if (battery_connect != noone) {
		
			if (mouse_check_button_pressed(mb_left) && global.run = false) {
		
				battery_connect.x = x+5;
				battery_connect.y = y+35;
				battery_connect.image_angle = 0;
				battery_plugin = true;
				global.run = true;
			}
		}
	}
}


if (battery_plugin == true) {
	
	image_index = 2;
} 

