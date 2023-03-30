#region // Wave Countdown Mechanic
count -= 1;

if (count <= 0) {
	
	global.spawn_timer_sec -= 1;
	count = 60;
}

if (global.spawn_timer_sec <= -1) {
	
	spawn_start = true;
	global.spawn_timer_sec = global.spawn_reset_sec;
	
}
///////////////////////////////////
#endregion 

randomize();

if (spawn_start == true) {
	
	global.current_wave += 1;
	
	switch (global.current_wave) {
		
		case 1: 
			mon_max = (10 * global.current_wave)
			break;
			
		case 4: 
			mon_max = (20 * global.current_wave)
			break;
			
		case 9: 
			mon_max = (40 * global.current_wave)
			break;
		
	
	}
	
	//Lane Chooser Logic
	
	_lane1 = choose(1,2,3,4);
	_lane2 = choose(1,2,3,4);
	_lane3 = choose(1,2,3,4);
	_lane4 = choose(1,2,3,4);
	
	
	//Monster Spawn Logic
	var i = 0;
	while (i < mon_max) {
		
		angle_var = 40-15;
		
		if (global.current_wave < 5 ) {rand_dist = irandom_range(200,500);}
		if (global.current_wave >= 5) {rand_dist = irandom_range(200,900);}
		if (global.current_wave >= 9) {rand_dist = irandom_range(200,1200);}
		
		rand_angle_1 = irandom_range(135-angle_var,135+angle_var);
		rand_angle_2 = irandom_range(45-angle_var,45+angle_var);
		rand_angle_3 = irandom_range(225-angle_var,225+angle_var);
		rand_angle_4 = irandom_range(315-angle_var,315+angle_var);
		
		// Lane switching base on random above
		switch (_lane1) {
			
			case 1: 
				xx = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_1)
				yy = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_1)
				break;
				
			case 2: 
				xx = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_2)
				yy = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_2)
				break;
				
			case 3: 
				xx = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_3)
				yy = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_3)
				break;
				
			case 4: 
				xx = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_4)
				yy = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_4)
				break;
		}
		
		switch (_lane2) {
			
			case 1: 
				xx2 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_1)
				yy2 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_1)
				break;
				
			case 2: 
				xx2 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_2)
				yy2 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_2)
				break;
				
			case 3: 
				xx2 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_3)
				yy2 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_3)
				break;
				
			case 4: 
				xx2 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_4)
				yy2 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_4)
				break;
		}
		
		switch (_lane3) {
			
			case 1: 
				xx3 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_1)
				yy3 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_1)
				break;
				
			case 2: 
				xx3 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_2)
				yy3 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_2)
				break;
				
			case 3: 
				xx3 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_3)
				yy3 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_3)
				break;
				
			case 4: 
				xx3 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_4)
				yy3 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_4)
				break;
		}
		
		switch (_lane4) {
			
			case 1: 
				xx4 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_1)
				yy4 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_1)
				break;
				
			case 2: 
				xx4 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_2)
				yy4 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_2)
				break;
				
			case 3: 
				xx4 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_3)
				yy4 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_3)
				break;
				
			case 4: 
				xx4 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_4)
				yy4 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_4)
				break;
		}
		
		switch (global.current_wave) {
			
			case 1: 		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				break;
				
			case 2:				
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				break;
				
			case 3:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				break;
				
			case 4:
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				break;
				
			case 5:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				break;
				
			case 6:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				break;
				
			case 7:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				break;
				
			case 8:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				break;
				
			case 9:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1)
				break;
				
			case 10:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				break;
				
			case 11:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				break;
				
			case 12:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				break;
				
			case 13:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				instance_create_layer(xx4,yy4,"ins_Monster",obj_Red1);
				break;
				
			case 14:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				instance_create_layer(xx4,yy4,"ins_Monster",obj_Red1);
				
			case 15:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				instance_create_layer(xx4,yy4,"ins_Monster",obj_Red1);
				break;
				
			case 16:		
				instance_create_layer(xx,yy,"ins_Monster",obj_Red1);
				instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
				instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
				instance_create_layer(xx4,yy4,"ins_Monster",obj_Red1);
				break;
			
			
		}
			
		i += 1;
	}

	//spawn end
	spawn_start = false;
	
}
	