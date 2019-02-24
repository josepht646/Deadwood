/// @description Insert description here
// You can write your code in this editor
//The following variables must be updated to match the appropriate values any
//time a new font is used or the sprite is resized:
//lineDisplayLimit: The maximum number of text lines that can fit in the dialogue box.
//lineChars: The maximum number of characters that can fit on a single line.
//lineSpacing: The vertical distance in pixles from the top of one line of text to the top of the next line.

if(text != "" && textTimer = 0){
	textTimer = displayTime;
	event_user(1);
	lineDisplayCycles = ceil(ds_list_size(lines)/lineDisplayLimit);
	topLine = 0;
}

if(textTimer > 0){ 
	textTimer--;
	if(textTimer == 0){
		lineDisplayCycles--;
		if(lineDisplayCycles == 0){
			text = "";
			obj_dialogueSpeaker.sprite_index = spr_blackCircle;
			ds_list_destroy(lines);
			linesInitialized = false;
		} else {
			textTimer = displayTime;
			topLine += lineDisplayLimit;
		}
	}
}
