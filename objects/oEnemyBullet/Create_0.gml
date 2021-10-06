ammo = oPlayer.ammo;
shielding = oShield.shielding;
function GiveDirection(object){
	if (oPlayer.touchingGround == false)
	{
	direction = point_direction(object.x,object.y,oPlayer.x,oPlayer.y + 100);	
	}
	else 
	 {
		 direction = point_direction(object.x,object.y,oPlayer.x,oPlayer.y - 5);
	 }
	
	image_angle = direction;
}
