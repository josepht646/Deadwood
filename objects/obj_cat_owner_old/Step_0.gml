/// @description Insert description here
// You can write your code in this editor
if(playerCollide && keyboard_check(ord("R"))){
	dialogue = ds_list_find_value(storyLines,global.sideQuestStage);
	if(global.sideQuestStage == sidestage_NotStarted){
		global.sideQuestStage++;
	}
	event_user(0);
}

playerCollide = false;

