if (touchingGround == false && jumping == false)
{
	oPlayer.speed = 0;
	parachuteInitiate = true;
	audio_play_sound(Parachute, 1, false);
	audio_play_sound(Gliding1, 2, true);
	
}
if (touchingGround == true)
{
	currentAltitude = oPlayer.y;
	jumping = true;		
	audio_stop_sound(Gliding1);
}