switch (menu_index)
{
	case 0: room_goto(rRoom); break;
	case 1: 
	case 2: room_goto(rHighScore); break;
	case 3: game_end(); break;
}