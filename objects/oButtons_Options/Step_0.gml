/// @description Animação

percent += 1/60;
//if (percent >1) percent -= 1;

if position_meeting(device_mouse_x_to_gui(0) ,device_mouse_y_to_gui(0),self){
	mouse_enter = true;
}else{
	mouse_enter = false;
}

var _curveStruct = animcurve_get(curveAsset_buttonMouseEnter); //get animation curve
var _channel = animcurve_get_channel(_curveStruct, "mouse_enter");

var _value = animcurve_channel_evaluate(_channel, percent)

var _start = 1;
var _end = 1.5;
var _distance = _end - _start;

if mouse_enter=true{
	image_xscale = _start + (_distance * _value);
	image_yscale = _start + (_distance * _value);
}else{
	image_xscale=1
	image_yscale=1
	percent = 0;
}
