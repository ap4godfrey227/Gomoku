// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_field_init(){
	var i, j;
	
	for (i=0; i<10; i++)
	{
		for(j=0; j<10; j++)
		{
			field[i,j] = 0;	
		}
	}
}