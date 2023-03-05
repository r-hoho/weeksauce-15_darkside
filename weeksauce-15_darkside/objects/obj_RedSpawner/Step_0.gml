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


if (spawn_start == true) {
	
	global.current_wave += 1;
	mon_max = (5 * global.current_wave)
	
	var i = 0;
	while (i < mon_max) {
		
		angle_var = 40;
		
		rand_dist = irandom_range(200,300);
		
		rand_angle_1 = irandom_range(135-angle_var,135+angle_var);
		rand_angle_2 = irandom_range(45-angle_var,45+angle_var);
		rand_angle_3 = irandom_range(225-angle_var,225+angle_var);
		rand_angle_4 = irandom_range(315-angle_var,315+angle_var);
		
		
		xx1 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_1)
		yy1 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_1)
		
		xx2 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_2)
		yy2 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_2)
		
		xx3 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_3)
		yy3 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_3)
		
		xx4 = obj_Tower.x + lengthdir_x(rand_dist,rand_angle_4)
		yy4 = obj_Tower.y + lengthdir_y(rand_dist,rand_angle_4)
	
		instance_create_layer(xx1,yy1,"ins_Monster",obj_Red1);
		instance_create_layer(xx2,yy2,"ins_Monster",obj_Red1);
		instance_create_layer(xx3,yy3,"ins_Monster",obj_Red1);
		instance_create_layer(xx4,yy4,"ins_Monster",obj_Red1);

		
		i += 1;
	}
	
	//spawn end
	show_debug_message("-");
	spawn_start = false;
	
}
	