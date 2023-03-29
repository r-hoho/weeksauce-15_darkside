//show_debug_message("Buy!")

if (global.gold >= current_cost) {
	
	global.gold -= current_cost
	current_tier += 1;
	x -= 1;
	y += 1;
	alarm[0] = 5;
	
	
	
	_newBatt = instance_create_layer(400,400,"ins_Battery",obj_Battery);

	with (_newBatt) {
	
		x = 400;
		y = 400;
		image_xscale = 1;
		image_yscale = 1;
	
	}
	
	scr_BatteryEjectBuy(_newBatt);
}

