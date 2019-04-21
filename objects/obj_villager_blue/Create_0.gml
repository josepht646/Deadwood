hasSpoken = ds_list_find_index(obj_dialogueInitializer.villagersSpokenTo, villagerID);

if(hasSpoken == -1){
	event_user(1);
}