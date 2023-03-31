if (action == true) {

	size_x += 16/30;
	size_y += 9/30;
	
	pos_x += 1;

	if (size_x <= 640) {
		camera_set_view_size(view_camera[0],size_x,size_y)
	}
	
	if (pos_x <= 580) {
		camera_set_view_pos(view_camera[0],pos_x,0);
		
	}

}

if (pos_x >= 580) {inst_71F08BAE.visible = true};
