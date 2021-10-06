draw_text(300,200,"Final Score: " + string(global.points));
if (global.points > global.final)
{
global.final = global.points;
draw_text(300,270,"High Score: " + string(last));
}
else
{
draw_text(300,270,"High Score: " + string(last));
}

