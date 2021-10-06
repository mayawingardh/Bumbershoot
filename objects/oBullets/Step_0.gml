bulletLifetime += delta_time / 10000;

if (bulletLifetime > 35)
{
	instance_destroy();
}

if (collision)
{
	global.points += 10;
	collision = false;
	
}
