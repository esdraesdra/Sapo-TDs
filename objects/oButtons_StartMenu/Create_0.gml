/// @description Insert description here
// You can write your code in this editor

instance_create_layer(window_get_width()/2,window_get_height()/2,"layer_buttons",oButtons_Play);
instance_create_layer(window_get_width()/2,window_get_height()/2+sprite_get_height(sButtonsBackground)+16,"layer_buttons",oButtons_Options);
instance_create_layer(window_get_width()/2,window_get_height()/2+sprite_get_height(sButtonsBackground)*2+32, "layer_buttons",oButtons_Quit);