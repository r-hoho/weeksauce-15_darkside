//show_debug_message("Buy!")

if (global.gold >= current_cost) {
	
	global.gold -= current_cost
	current_tier += 1;
	
	
	_newBatt = instance_create_layer(100,300,"ins_Battery",obj_Battery);

	with (_newBatt) {
	
		image_xscale = 1;
		image_yscale = 1;
	
	}
}

