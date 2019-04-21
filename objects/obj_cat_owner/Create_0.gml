/// @description Insert description here
// You can write your code in this editor
storyLines = ds_list_create();
ds_list_add(storyLines, "You must help me! My cat is missing! I think he went this way, but it's too dangerous for me to go after him.");
ds_list_add(storyLines, "Please find my cat. I think he went this way.");
ds_list_add(storyLines, "You've saved my cat! Truly you are a great hero.");
ds_list_add(storyLines, "You've saved my cat! Truly you are a great hero.");

if(global.sideQuestStage >= sidestage_Completed){
	instance_create_layer(x, y + 256, "Instances", obj_found_cat);
}