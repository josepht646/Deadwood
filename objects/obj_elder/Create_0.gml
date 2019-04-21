/// @description Insert description here
// You can write your code in this editor
storyLines = ds_list_create();
ds_list_add(storyLines, "You're early. Come back when the game is finished.");
ds_list_add(storyLines, "I'm glad you're here. Surely you've seen by now that the land we call home is cursed. Many centuries ago, a powerful sorcerer was locked away within an ancient tomb. He swore to take revenge by one day plunging the land into death and despair. To defeat him, you must unlock his tomb. The key is located in the forest to the north. Make haste, hero.");
ds_list_add(storyLines, "To unlock the sorcerer's tomb, you must find the key located in the forest to the north. Make haste, hero.");
ds_list_add(storyLines, "I see you've recovered the key! Well done! Unfortunately, I have been consulting the histories, and it appears I made an error. You will need two keys to open the sorcerer's tomb. The second key is located atop the mountain to the east. Good luck.");
ds_list_add(storyLines, "You must find the second key atop the mountain to the east. Good luck.");
ds_list_add(storyLines, "Now that you have both keys, you can enter the tomb and defeat the sorcerer. If I am correct, this will reverse the curse and allow our world to slowly heal. The tomb is at the end of the path through the sand. This will be a difficult fight, so ensure that you are ready before departing. We are all counting on you.");
ds_list_add(storyLines, "Now that you have both keys, you can enter the tomb and defeat the sorcerer. The tomb is at the end of the path through the sand. We are all counting on you.");
ds_list_add(storyLines, "You have defeated the sorcerer, and already life is returning to the land. In time, Springwood will be green once again. Congratulations, hero.");
ds_list_add(storyLines, "In time, Springwood will be green once again. Congratulations, hero.");
if(global.mainQuestStage == stage_Tutorial){
	global.mainQuestStage++;
}