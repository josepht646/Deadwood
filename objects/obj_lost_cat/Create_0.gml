/// @description Insert description here
// You can write your code in this editor
event_inherited();

target_x = 3104;
target_y = 2176;

if(global.sideQuestStage >= sidestage_Completed){
	newPortal = instance_create_layer(x, y, "Instances", obj_portal);
	newPortal.targetX = target_x;
	newPortal.targetY = target_y;
	newPortal.targetRoom = room_town;
	instance_destroy();
}