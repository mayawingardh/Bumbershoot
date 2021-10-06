switch (menu_index)
{
	case 0: room_goto(Room1); break;
	case 1: 
	case 2: room_goto(rhighScore); break;
	case 3: game_end(); break;
}