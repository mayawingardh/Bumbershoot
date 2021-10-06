/// @description Insert description here
// You can write your code in this editor
diffX = 0;
diffY = 0;
enemyX = self.id.x;
enemyY = self.id.y;

if (distance_to_object(oPlayer) < 500)
{
speed = min(speed + 0.5, 5);
var pointdir = point_direction(x, y, oPlayer.x, oPlayer.y);
image_angle += sin(degtorad(pointdir - image_angle)) * rSpeed;
direction = image_angle;
}
else
{
speed = min(speed + 0.5, 5);
image_angle++;
direction = image_angle;	
	
}



if(oPlayer.x > enemyX)
{
	diffX = oPlayer.x - enemyX;
} else
{
	diffX = enemyX - oPlayer.x;
}

if(oPlayer.y > enemyY)
{
	diffY = oPlayer.y - enemyY;
} else
{
	diffY = enemyY - oPlayer.y;
}


if(diffX < 800 && diffY < 400 && self.id.bulletCounter > 1/shootFrequency)
{
	var bullet = instance_create_layer(enemyX+10,enemyY+30,"Instances",oEnemyBullet);
	bullet.GiveDirection(self.id);
	self.id.bulletCounter = 0;
}
self.id.bulletCounter += delta_time / 1000000;