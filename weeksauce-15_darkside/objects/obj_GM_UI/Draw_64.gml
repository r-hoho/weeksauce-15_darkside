draw_set_color(c_white);
draw_set_font(fn_Leela16);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_font(fn_Leela20);
draw_text(865,70,"Wave: " + string(global.current_wave));

draw_set_font(fn_Leela16);
draw_text(865,110,"Next Wave in: ");
draw_text(865,135,string(global.spawn_timer_sec));

draw_set_font(fn_Leela20);
draw_text(865,210,"HP: " + string(obj_Tower.hp));

draw_set_font(fn_Leela16);
draw_text(865,245,"Cash: $" + string(global.gold));


