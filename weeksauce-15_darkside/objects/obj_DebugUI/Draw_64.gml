draw_set_color(c_white);
draw_set_font(fn_Leela12);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);


draw_text(10,10,"X: "+string(mouse_x));
draw_text(10,30,"Y: "+string(mouse_y));

draw_text(10,50,"Gui X: "+string(device_mouse_x_to_gui(0)));
draw_text(10,70,"Gui Y: "+string(device_mouse_y_to_gui(0)));

