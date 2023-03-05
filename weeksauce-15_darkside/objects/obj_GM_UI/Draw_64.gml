draw_set_color(c_white);
draw_set_font(fn_Leela20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(400,570,"Wave in: " + string(global.spawn_timer_sec));
draw_text(400,600,"Current Wave: " + string(global.current_wave));

draw_text(400,510,"HP: " + string(obj_Tower.hp));


