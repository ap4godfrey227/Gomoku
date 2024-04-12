// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_rand(){
	
	var i, j;
	
	while(true)
	{
		i = floor(random(10));
		j = floor(random(10));
		
		if(field[i, j] == 0)
		{
			field[i, j] = 2;
			exit;
		}
	}
}