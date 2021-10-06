//oPlayer.hitPoints -= 1;
oPlayer.image_index = 3;

damageSound = round(random_range(0,3));
show_debug_message(damageSound);
switch(damageSound)
	{
		case "0" :
		audio_play_sound(Damage1, 2, false)
		break;
		case "1" :
		audio_play_sound(Damage2, 2, false)
		break;
		case "2" :
		audio_play_sound(Damage3, 2, false)
		break;
		case "3" :
		audio_play_sound(Damage4, 2, false)
		break;
	}

instance_destroy();