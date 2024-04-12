// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_move(){
	
	if(scr_find_win()) exit; // Priority 1: Block player win
	if(scr_find_block()) exit; // P2: win
	if(scr_find_block_three()) exit; // P3: Block player 3 in a row
	if(scr_find_four()) exit; // P4: Find 4 in a row
	scr_find_rand();
}