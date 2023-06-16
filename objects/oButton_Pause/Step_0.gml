/// @description Insert description here
// You can write your code in this editor

//qnd ativado muda velocidade de cada ponto pra zero
if buttonStop_isActivated{
	
	for (var i = 0; i < path_get_number(Path1); ++i;){
		px = path_get_point_x(Path1,i)
		py = path_get_point_y(Path1,i)
	
		path_change_point(Path1,i,px,py,0)	
	}
}else{
	
	for (var i = 0; i < path_get_number(Path1); ++i;){
		px = path_get_point_x(Path1,i)
		py = path_get_point_y(Path1,i)
	
		path_change_point(Path1,i,px,py,normalSpeed)
	}
}

//fazer ele parar de criar inimigos qnd estiver pausado
if instance_exists(oEnemy_1){//ARRUMAR PRA TODOS OS INIMIGOS
	if buttonStop_isActivated{
		time_source_pause(_newWave)
	}else{
		time_source_resume(_newWave)
	}
}

//trocar sprites se colocar o mouse 
if position_meeting(mouse_x,mouse_y,self){
	if buttonStop_isActivated{
		image_index=3;
	}else{
		image_index=2;
	}
}else{
	if buttonStop_isActivated{
		image_index=1;
	}else{
		image_index=0;
	}
}

if keyboard_check_pressed(vk_space){
	if buttonStop_isActivated{
		buttonStop_isActivated=false;
	}else{
		buttonStop_isActivated=true;
	}
}