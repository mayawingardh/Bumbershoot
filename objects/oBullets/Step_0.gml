bulletLifetime += delta_time / 10000;

if (bulletLifetime > 35)
{
	instance_destroy();
}