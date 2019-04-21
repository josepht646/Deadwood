/// @description Create exclamation
// You can write your code in this editor

exclamation = instance_create_layer(x+(45*dcos(image_angle-45)),
									y+(45*dsin(image_angle-225)), 
									"HUD", obj_exclamation);
with(exclamation){
	depth = other.depth - 1;
}