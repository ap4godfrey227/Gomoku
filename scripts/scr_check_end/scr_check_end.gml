// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_end(){

	if(scr_player_win_check())
	{
		player_score += 1;
		audio_play_sound(snd_win, 1, false);
		show_message("You Win!");
		scr_field_init();
		return true;
	}
	
	if(scr_comp_win_check())
	{
		computer_score += 1;
		audio_play_sound(snd_lose, 1, false);
		show_message("You Lose!");
		scr_field_init();
		return true;
	}
	
	if(scr_draw_check())
	{
		draw_score += 1;
		audio_play_sound(snd_draw, 1, false);
		show_message("It's a draw!");
		scr_field_init();
		return true;
	}
	
	if(player_score == 3)
	{
		room_goto(1);
		return true;
	}
	
	if(computer_score == 3)
	{
		room_goto(2);
		return true;
	}
	
	return false;
}