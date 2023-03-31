if (obj_Tower.hp <= 10) {spawn_start_2 = true}

if (spawn_start_2 == true) {
   
   count += 1;
   endgame_count += 1;
   
   if (count >= 10) {
	   
	   _big = instance_create_layer(irandom_range(0,390),irandom_range(100,300),"Ins_MonsterMirror",obj_RedBig)
	   with (_big) { image_xscale = 20; image_yscale = 20; image_angle = irandom_range(-20,20);} 
	   
	   count = 0;
	   
   }
   
   if (endgame_count >= (60*5)) {
	   
	   instance_create_layer(350,180,"Ins_Blackout",obj_Endgame)
	   
	   
	   room_goto(rm_End)

	   
	  }
}