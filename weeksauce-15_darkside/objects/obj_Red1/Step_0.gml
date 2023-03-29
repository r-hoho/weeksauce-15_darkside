if (hp <= 0) { 
	
	global.gold += gold_drop;
	sprite_index = spr_Red1_Dead;
	slow = 100/100;
	exit;
	//if (image_index >= 7) {instance_destroy()}
	
	}
	

move_towards_point(obj_Tower.x,obj_Tower.y,(move_spd)*slow);

if (place_meeting(x,y,obj_LaneLight) && hp > 0) {
	
	//check if light is on
	lane_light = instance_place(x,y,obj_LaneLight)
	if (lane_light.visible) {
		
		//main effect
		slow = 15/100; // /100 as %
		hp -= 1;
		sprite_index = spr_Red1_Burn;
		if (_run == 0) {
			image_index = irandom_range(0,7);
			_run += 1;
			}
		exit;
	}
} 

slow = 100/100;
sprite_index = spr_Red1;
