/// @description Insert description here
// You can write your code in this editor
if(playerCollide && keyboard_check(ord("R"))){
	dialogue = ds_list_find_value(storyLines,global.mainQuestStage);
	if(global.mainQuestStage mod 2 != 0 && global.mainQuestStage != 7){
		global.mainQuestStage++;
	}
	event_user(0);
}

playerCollide = false;