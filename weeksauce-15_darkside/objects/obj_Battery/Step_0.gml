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

