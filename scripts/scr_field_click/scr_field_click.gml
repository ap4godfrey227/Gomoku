// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_field_click(){
	
	var i, j;

	i = floor((mouse_x-256)/32);
	j = floor((mouse_y-64)/32);
	
	//if not in play area
	if( i<0 || j<0 || i>9 || j>9) exit;
	
	//if already taken
	if(field[i,j] != 0) exit;
	
	field[i,j] = 1;
	
	audio_play_sound(snd_click, 1, false);
	
	
	//Computers turn and check win
	if(scr_check_end()) exit;
	scr_find_move();
	scr_check_end();
}