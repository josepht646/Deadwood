/// @description Insert description here
// You can write your code in this editor
if(playerCollide && keyboard_check(ord("R"))){
	if(exclamation != -1){
		ds_list_add(obj_dialogueInitializer.villagersSpokenTo, villagerID);	
	}
	
	event_user(0);
}

playerCollide = false;

event_inherited();