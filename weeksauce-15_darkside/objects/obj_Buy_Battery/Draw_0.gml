draw_self();

draw_set_color(c_white);
draw_set_font(fn_Leela12);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x+20,y,string(current_cost));