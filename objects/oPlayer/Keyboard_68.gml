if (moveSpeed + acc < 10)
{
acc += 0.2;
oPlayer.x += moveSpeed + acc;
}
if (moveSpeed + acc >= 10)
{
	moveSpeed = 10;
	acc = 0;
	oPlayer.x += moveSpeed;
}