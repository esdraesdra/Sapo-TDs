/// @description Insert description here
// You can write your code in this editor



if keyboard_check_pressed(ord("R")){ game_restart();}

if !buttonStop_isActivated and !roundActive{ 
	roundActive=true;
	checkRounds();
}
/*
if roundActive=true{
	if (!instance_exists(oEnemy_1)){roundActive=false}
}

