// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_win_check(){
	
	var i, j;
	
	
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			//check horizontal
			if(i < 6)
			{
				if((field[i,j]==1) && (field[i+1,j]==1) && (field[i+2,j]==1) && (field[i+3,j]==1) && (field[i+4,j]==1))
				{
					return true;
				}
			}
			
			//check vertical
			if(j < 6)
			{
				if((field[i,j]==1) && (field[i,j+1]==1) && (field[i,j+2]==1) && (field[i,j+3]==1) && (field[i,j+4]==1))
				{
					return true;
				}
			}
			
			//check diagonals
			if(j > 3 && i < 6)
			{
				if((field[i,j]==1) && (field[i+1,j-1]==1) && (field[i+2,j-2]==1) && (field[i+3,j-3]==1) && (field[i+4,j-4]==1))
				{
					return true;
				}
			}
			
			if(i > 3 && j < 6)
			{
				if((field[i,j]==1) && (field[i-1,j+1]==1) && (field[i-2,j+2]==1) && (field[i-3,j+3]==1) && (field[i-4,j+4]==1))
				{
					return true;
				}
			}
			
			if(i < 6 && j < 6)
			{
				if((field[i,j]==1) && (field[i+1,j+1]==1) && (field[i+2,j+2]==1) && (field[i+3,j+3]==1) && (field[i+4,j+4]==1))
				{
					return true;
				}
			}
		}
	}
	
	return false;
}