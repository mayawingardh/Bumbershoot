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
	
if (deathTimer> 1)
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
		//image_index = 0;
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
		//image_index = 1;
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
			//image_index = 2;
			braking += 0.15;
			if (braking > fallSpeed - 2)
				{
					braking = fallSpeed - 2;
				}
		}
}


/// @description Player movment

moveRight = keyboard_check(vk_right)
moveLeft = keyboard_check(vk_left)
moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)

vx= ((moveRight- moveLeft) * moveSpeed);
vy= ((moveDown- moveUp) * moveSpeed);


if (vx==0 && vy==0 )
{
	// changes idile sprites based on last direction
	
	switch dir
	{
		case 0: sprite_index = PlayerStandingL; break;
		case 2: sprite_index= PlayerStandingR; break;
		//case 3: sprite_index = spr_playerDown; break; 
		//case 1: sprite_index = spr_playerUp; break; 
	}
}

if (vx != 0|| vy!=0)
{
	x += vx
	y += vy;
	
	//Change sprites on diffrent directions
	if (vx > 0)
	
	{
		sprite_index = Mspr_player_runR
		
		dir = 0;
	}	
	
	if (vx < 0)	
	{
		sprite_index =Mspr_Player_RunL
	
		dir = 2;	
	}
	
	
}	

//if (vy > 0)
//	{
//		sprite_index = PlayerHangingL
//		dir = 3;
//	}
	
//	if (vy < 0)
//	{
//		sprite_index= PlayerHangingR
//		dir =1 ;
//	}
	

