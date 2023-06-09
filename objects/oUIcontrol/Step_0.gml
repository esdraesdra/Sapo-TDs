/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")){ game_restart();}

#region botão de pausar

//ativar a variavel bool qnd apertr tal tecla
if keyboard_check_pressed(vk_space) {//trocar pro mouse assim q der
	if !buttonStop_isActivated{ buttonStop_isActivated=true; }
	else{ buttonStop_isActivated=false;}
}
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
	
		path_change_point(Path1,i,px,py,100)
	}
}

#endregion

#region botão x2

//ativar a variavel bool qnd apertr tal tecla
if keyboard_check_pressed(vk_right){//trocar pro mouse assim q der
	if !buttonX2_isActivated{ buttonX2_isActivated=true; } 
	else{ buttonX2_isActivated=false;}
}
//qnd ative troca a velocidade dos pontos pra 350
if buttonX2_isActivated and !buttonStop_isActivated{
	for (var i = 0; i < path_get_number(Path1); ++i;){
		px = path_get_point_x(Path1,i)
		py = path_get_point_y(Path1,i)
	
		path_change_point(Path1,i,px,py,300)	
	}
}

#endregion

if keyboard_check_pressed(vk_escape){ instance_create_layer(-32,112,"Instances",oEnemy_1)};