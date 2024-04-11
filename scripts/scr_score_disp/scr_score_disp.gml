// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_score_disp(){
	
	draw_sprite(spr_cells, 0, 256, 64);

	var i, j;
	
	for(i=0; i<10; i++)
	{
		for(j=0; j<10; j++)
		{
			if(field[i,j] == 1)
			{
				draw_sprite(spr_white, 0, 256+(32*i), 64+(32*j));	
			}
			if(field[i,j] == 2)
			{
				draw_sprite(spr_black, 0, 256+(32*i), 64+(32*j));	
			}
		}
	}
	
	
	draw_set_color(c_white);
	draw_text(30, 320, "Player's Wins: " + string(player_score));
	draw_set_color(c_black);
	draw_text(30, 360, "Computers's Wins: " + string(computer_score));
	draw_set_color(c_red);
	draw_text(30, 400, "Draws: " + string(draw_score));
}