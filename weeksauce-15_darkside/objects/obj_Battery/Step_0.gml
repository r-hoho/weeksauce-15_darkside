if (engine_connect_id != noone) {

switch_connect_id = engine_connect_id.switch_connect_id;

}

// if state is on
// then Battery drain

//which state is connect to this battery ?

if (switch_connect_id != noone) {
	
	if (switch_connect_id.power_state == true) {
		
		energy -= 10/60;
	}
	
	if (energy <= 0 ) {
		
		switch_connect_id.power_state = false;
	}
}

switch (energy)
{
    case 100:
		image_index = 0;
    break;
	
	case 75:
		image_index = 1;
    break;

    case 50:
		image_index = 2;
    break;
	
	case 25:
		image_index = 3;
    break;
	
	case 0:
		image_index = 4;
    break;
}


if (ejected == true) {
	
	//show_debug_message("EJECTED!!!")
	
	if (ejected_location == false) {
		
		rand_x = irandom_range(50,300);
		rand_angle = irandom_range(5,10);
		ejected_location = true;
	}
	
	move_towards_point(rand_x,350,5);
	image_angle += rand_angle;
	
	if (vspeed >= 0) {vspeed += 1;}
	if (vspeed < 0) {vspeed -= 6;}
	vspeed -= 4;
	
	if (place_meeting(x,y,obj_AreaBattDrop)) {ejected = false;}
	
}

if (ejected == false) {
	
	vspeed = 0;
	hspeed = 0;
	ejected_location = false;
}
	

