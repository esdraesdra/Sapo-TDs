/// @description Insert description here
// You can write your code in this editor

//qnd ative troca a velocidade dos pontos pro dobro
if buttonX2_isActivated{
	if !buttonStop_isActivated{
		for (var i = 0; i < path_get_number(Path1); ++i;){
		px = path_get_point_x(Path1,i)
		py = path_get_point_y(Path1,i)
	
		path_change_point(Path1,i,px,py,x2Speed)	
		}
	}
}

if position_meeting(mouse_x,mouse_y,self){
	if buttonX2_isActivated{
		image_index=3;
	}else{
		image_index=2;
	}
}else{
	if buttonX2_isActivated{
		image_index=1;
	}else{
		image_index=0;
	}
}