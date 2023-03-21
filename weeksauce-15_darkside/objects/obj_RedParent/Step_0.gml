if (hp <= 0) { 
	
	global.gold += gold_drop;
	instance_destroy() 
	
	}
	

move_towards_point(obj_Tower.x,obj_Tower.y,(move_spd)*slow);

if (place_meeting(x,y,obj_LaneLight)) {
	
	//check if light is on
	lane_light = instance_place(x,y,obj_LaneLight)
	if (lane_light.visible) {
		
		//main effect
		slow = 15/100; // /100 as %
		hp -= 1;
		image_index = 1;
		exit;
	}
} 

slow = 100/100;
image_index = 0;
