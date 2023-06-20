/// @description Insert description here
// You can write your code in this editor


draw_self();
scribble("[fa_center][fa_middle][fStartMenu][c_white]JOGAR").draw(x,y)

if position_meeting(device_mouse_x_to_gui(0) ,device_mouse_y_to_gui(0),oButtons_Play) and mouse_check_button_pressed(mb_left){
	var target = rLevelSelect;
	TransitionStart(target,seqTransition_FadeOut,seqTransition_FadeIn)
}

