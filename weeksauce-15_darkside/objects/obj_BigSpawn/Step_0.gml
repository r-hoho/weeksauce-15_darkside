if (obj_Tower.hp <= 20) {spawn_start = true}

if (spawn_start == true) {
   
   count += 1;
   
   if (count >= 10) {
	   
	   _big = instance_create_layer(irandom_range(0,390),irandom_range(100,300),"Ins_MonsterMirror",obj_RedBig)
	   with (_big) { image_xscale = 20; image_yscale = 20; image_angle = irandom_range(-20,20);} 
	   
	   count = 0;
	   
   }
}