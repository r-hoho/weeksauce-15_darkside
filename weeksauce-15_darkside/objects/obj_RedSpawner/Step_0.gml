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

randomize()

if (spawn_start == true) {
	
	global.current_wave += 1;
	mon_max = (10 * global.current_wave)
	
	//Lane Chooser Logic
	
	_lane1 = choose(1,2,3,4);
	_lane2 = choose(1,2,3,4);
	_lane3 = choose(1,2,3,4);
	_lane4 = choose(1,2,3,4);
	
	
	//Monster Spawn Logic
	var i = 0;
	while (i < mon_max) {
		
		angle_var = 40;
		
		rand_dist = irandom_range(200,300);
		
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
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 2:				
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 3:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 4:
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 5:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				if (i==1) { instance_create_layer(xx2,yy2,"ins_Monster",obj_Red2);}
				if (i==1) { instance_create_layer(xx3,yy3,"ins_Monster",obj_Red2);}
				if (i==1) { instance_create_layer(xx4,yy4,"ins_Monster",obj_Red2);}
				break;
				
			case 6:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 7:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 8:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 9:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 10:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 11:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 12:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 13:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 14:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 15:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
				
			case 16:		
				if (i!=1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red1);}
				if (i==1) { instance_create_layer(xx,yy,"ins_Monster",obj_Red2);}
				break;
			
			
		}
			
		i += 1;
	}

	//spawn end
	spawn_start = false;
	
}
	