//show_debug_message("Buy!")

if (global.gold >= current_cost) {
	
	global.gold -= current_cost
	current_tier += 1;
	
	
	_newCharger = instance_create_layer(x,y,"ins_Charger",obj_Charger);

	with (_newCharger) {
	
		//image_xscale = 0.9090909;
		//image_yscale = 0.75;
	
	}
	
	y -= 40;
}

