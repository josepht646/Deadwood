
with (objPlayer)
{
	objPlayer.weapon = 1;
}

if (obj_characterInfo.character == 1) {
	objPlayer.sprite_index = sprArcherWCBD;
}

if (obj_characterInfo.character == 2) {
	objPlayer.sprite_index = sprKnightWS;
}

if (obj_characterInfo.character == 3) {
	objPlayer.sprite_index = sprWizardWS;
}

//then destroy
instance_destroy();