oPlayer.speed = 0;
oPlayer.direction = 0;

if (impactSpeed > 12)
	{
		hitPoints -= 10;
		image_index = 2;
		impactSpeed = 0;
	}
else
{
landingSound = random_range(0, 1)
switch(landingSound)
{
	case "0" :
	audio_play_sound(Landing1, 2, false);
	break;
case "1" :
	audio_play_sound(Landing2, 2, false);
	break;
}


touchingGround = true;
impactSpeed = 0;
impactEnd = oPlayer.y;    
}
