/// @description Insert description here
// You can write your code in this editor
if(playerCollide && keyboard_check(ord("R"))){
	dialogue = ds_list_find_value(storyLines,global.sideQuestStage);
	if(global.sideQuestStage == sidestage_NotStarted || global.sideQuestStage == sidestage_Completed){
		global.sideQuestStage++;
	}
	event_user(0);
}


if(exclamation == -1 && global.sideQuestStage mod 2 == 0 && global.mainQuestStage > stage_TownArrival){
	event_user(1);
}


playerCollide = false;

