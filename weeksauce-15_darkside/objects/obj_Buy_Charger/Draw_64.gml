draw_set_color(c_white);
draw_set_font(fn_Leela20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (current_tier == 0) {draw_text(x+650,y+80,string(current_cost))}
if (current_tier == 1) {draw_text(x+650,y+40,string(current_cost))}