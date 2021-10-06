if (oShield.shielding)
{
	switch(oPlayer.ammo)
	{
		case "0" :
		oPlayer.ammo++;
		audio_play_sound(Shield1, 1, false)
		break;
		case "1" :
		oPlayer.ammo++;
		audio_play_sound(Shield2, 1, false)
		break;
		case "2" :
		oPlayer.ammo++;
		audio_play_sound(Shield3, 1, false)
		break;
		case "3" :
		oPlayer.ammo++;
		audio_play_sound(Shield4, 1, false)
		break;
		case "4" :
		oPlayer.ammo++;
		audio_play_sound(Shield5, 1, false)
		break;
		
	}
		if (oPlayer.ammo >= oPlayer.maxAmmo && oPlayer.hitPoints < oPlayer.maxHitPoints)
			{
				oPlayer.hitPoints++;
				audio_play_sound(Heal, 3, false);
				oPlayer.ammo = oPlayer.maxAmmo;
				
				
			}
			if (oPlayer.hitPoints >= oPlayer.maxHitPoints)
					{
					audio_play_sound(NOFX, 1, false);
					oPlayer.hitPoints = oPlayer.maxHitPoints
					}
			
instance_destroy();
}