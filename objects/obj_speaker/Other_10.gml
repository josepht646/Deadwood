/// @description Send dialogue to HUD
// You can write your code in this editor
if(obj_dialogueText.textPaused){
	obj_dialogueText.textTimer = 0;
	obj_dialogueText.textPaused = false;
}

if(exclamation != -1){
	instance_destroy(exclamation);
	exclamation = -1;
}

obj_dialogueSpeaker.sprite_index=sprite_index;
obj_dialogueText.text = dialogue;