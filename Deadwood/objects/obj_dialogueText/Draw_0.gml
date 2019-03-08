/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_alpha(1);
draw_set_font(font0);
draw_set_color(c_white);
if(linesInitialized){
	for(i = 0; i < lineDisplayLimit && i < ds_list_size(lines); i++){
		if(!textPaused || (i + 1 != lineDisplayLimit && i + 1 != ds_list_size(lines))){
		draw_text(x + 104, y + 14 + (i*lineSpacing), 
						ds_list_find_value(lines,i+topLine));
		}
		else{
			draw_text(x + 104, y + 14 + (i*lineSpacing), 
						ds_list_find_value(lines,i+topLine) + "...");
		}
	}
}