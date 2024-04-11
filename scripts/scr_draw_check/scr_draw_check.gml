// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_check(){
	var i, j;
	
	for(i=0;i<6;i++)
	{
		for(j=0;j<6;j++)
		{
			if(field[i,j] == 0)
			{
				return false;
			}
		}
	}
	
	return true;
}