/// @description Send dialogue to HUD
// You can write your code in this editor
obj_dialogueSpeaker.sprite_index=sprite_index;
obj_dialogueText.text = dialogue;

if(exclamation != -1){
	instance_destroy(exclamation);
	exclamation = -1;
}