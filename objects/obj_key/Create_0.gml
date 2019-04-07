/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(room_get_name(room) == "room_level_1"){
	deleteAfter = stage_PostLevel1; 
} else if(room_get_name(room) == "room_level_2"){
	deleteAfter = stage_PostLevel2;
} else{
	deleteAfter = stage_PostBoss;
}

if(global.mainQuestStage >= deleteAfter){
	newPortal = instance_create_layer(x, y, "Instances", obj_portal);
	newPortal.targetX = target_x;
	newPortal.targetY = target_y;
	newPortal.targetRoom = room_town;
	instance_destroy();
}