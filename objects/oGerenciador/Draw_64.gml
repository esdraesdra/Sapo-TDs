/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.75)
draw_rectangle_color(0,0,string_width_scribble("fps_real: "+string(fps_real)),string_height_scribble("fps_real: "+string(fps_real))*2,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1)
scribble("fps: "+string(fps)).draw(0,0);
scribble("fps_real: "+string(fps_real)).draw(0,20);

