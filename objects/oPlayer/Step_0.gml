oPlayer.y += fallSpeed - braking;
jumpHeight = currentAltitude - oPlayer.y;
speed -= 1;
if (speed < 0)
{
	speed = 0;
}

if (hitPoints < 1)
{
	deathTimer += delta_time / 100000;
	oPlayer.image_alpha = 0;
	oPlayer.moveSpeed = 0;
	
	if (hitPoints < 0)
	
	{
		hitPoints=0;
	}
	
if (deathTimer> 30)
{
		
	room_goto(rHighScore);
	
	
}
	
	
	audio_play_sound(Falldeath, 5, false);
	
	if (deathTimer > 30)
	{
		room_goto(rHighScore)
	}
	
}

if (jumping == true)
{
	jumpTimer += delta_time / 1000000;
	if (oPlayer.y > (currentAltitude - 140) && jumpTimer < 0.4)
	{
	oPlayer.y -= fallSpeed * 0.95;
	}
	else 
	{
		jumping = false;
		jumpTimer = 0;
	}
	
}


if place_meeting(x, y + 1, oGround)
	{
		image_index = 0;
		touchingGround = true;
		braking = fallSpeed;
	}

else
	{
		touchingGround = false;
	}


if (touchingGround == false)
{
	impactStart = oPlayer.y - impactEnd;
	
	if (parachuteActive == false)
	{
		impactSpeed = impactStart * delta_time / 1000000;
		image_index = 1;
		braking -= 0.5;
		if (braking < 0)
		{
			braking = 0;
		}
	}

	if (parachuteInitiate)
		{
			braking = 1;
			parachuteInitiate = false;
		}

	if (parachuteActive)
		{
			impactSpeed -= (impactSpeed * delta_time / 100000);    
			image_index = 2;
			braking += 0.15;
			if (braking > fallSpeed - 2)
				{
					braking = fallSpeed - 2;
				}
		}
}