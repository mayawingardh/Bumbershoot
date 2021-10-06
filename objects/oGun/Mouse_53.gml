if (oPlayer.ammo > 0 && oShield.shielding == false)
{
firing = true;
oPlayer.parachuteActive = false;
oPlayer.shielding = false;

image_alpha = 1;
oPlayer.ammo--;
//oPlayer.direction = 0;
//oPlayer.speed = 0;
lookingAt = point_direction(x,y, mouse_x, mouse_y);

bulletSpawnX= x + lengthdir_x(gunLength, lookingAt + gunDirection);
bulletSpawnY= y + lengthdir_y(gunLength, lookingAt + gunDirection);

bullet = instance_create_layer(bulletSpawnX, bulletSpawnY, "Instances", oBullets);

bullet.direction = lookingAt;
oBullets.image_angle = direction;


if (oPlayer.touchingGround == false)
{
recoilDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x *-1, mouse_y *-1);
oPlayer.direction = recoilDirection;
oPlayer.speed = 30;
}


audio_play_sound(Shot1, 1, false);
}

