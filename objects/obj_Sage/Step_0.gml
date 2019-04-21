/// @description Insert description here
// You can write your code in this editor

if(playerCollide && keyboard_check(ord("R"))){
	dialogue = ds_list_find_value(sageLines,lineNum);
	lineNum++;
	lineNum = lineNum mod ds_list_size(sageLines);
}

event_inherited();