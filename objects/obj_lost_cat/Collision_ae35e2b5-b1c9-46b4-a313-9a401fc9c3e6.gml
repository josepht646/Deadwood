/// @description Insert description here
// You can write your code in this editor
if(global.sideQuestStage == sidestage_Started){
	obj_characterInfo.xp = obj_characterInfo.xp + 200;
	global.sideQuestStage++;
}

event_inherited();