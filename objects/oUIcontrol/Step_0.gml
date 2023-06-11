/// @description Insert description here
// You can write your code in this editor

game_set_speed(60,gamespeed_fps)

if keyboard_check_pressed(ord("R")){ game_restart();}

if keyboard_check_pressed(vk_escape){ 
	newWave(oEnemy_1,4,6);
};

