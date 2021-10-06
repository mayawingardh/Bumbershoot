/// @description Insert description here
// You can write your code in this editor
diffX = 0;
diffY = 0;
enemyX = self.id.x;
enemyY = self.id.y;

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


if(diffX < 800 && diffY < 200 && self.id.bulletCounter > 1/shootFrequency)
{
	var bullet = instance_create_layer(enemyX+10,enemyY+30,"Instances",oEnemyBullet);
	bullet.GiveDirection(self.id);
	self.id.bulletCounter = 0;
}
self.id.bulletCounter += delta_time / 1000000;