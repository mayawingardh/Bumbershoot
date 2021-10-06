global.final=0;
	
//code for high score
ini_open("data.ini");
last = ini_read_real("data", "highscore", 0);
	
if (global.points > last)
{
    ini_write_real("data", "highscore", global.points);
    last = global.points;
}

ini_close();
	