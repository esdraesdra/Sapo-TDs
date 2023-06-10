/// @description Insert description here
// You can write your code in this editor

//qnd ativado muda velocidade de cada ponto pra zero
if buttonStop_isActivated{
	image_index=1;
	for (var i = 0; i < path_get_number(Path1); ++i;){
		px = path_get_point_x(Path1,i)
		py = path_get_point_y(Path1,i)
	
		path_change_point(Path1,i,px,py,0)	
	}
}else{
	image_index=0;
	for (var i = 0; i < path_get_number(Path1); ++i;){
		px = path_get_point_x(Path1,i)
		py = path_get_point_y(Path1,i)
	
		path_change_point(Path1,i,px,py,100)
	}
}