// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_block_three(){
	
	var i, j;
	
	// check horizontal
	for(i=0; i<8; i++)
	{
		for(j=0; j<10; j++)
		{
			if(field[i,j]==1 && field[i+1,j]==1 && field[i+2,j]==1)
			{
				if(i > 0)
				{
					if(field[i-1,j] == 0)
					{
						field[i-1,j] = 2;
						return true;
					}
				}
				if(i < 9)
				{
					if(field[i+1,j] == 0)
					{
						field[i+1,j] = 2;
						return true;
					}
				}
			}
		}
	}
	
	
	// check vertical
	for(i=0; i<10; i++)
	{
		for(j=0; j<8; j++)
		{
			if(field[i,j]==1 && field[i,j+1]==1 && field[i,j+2]==1)
			{
				if(j > 0)
				{
					if(field[i,j-1] == 0)
					{
						field[i,j-1] = 2;
						return true;
					}
				}
				if(j < 9)
				{
					if(field[i,j+1] == 0)
					{
						field[i,j+1] = 2;
						return true;
					}
				}
			}
		}
	}
	
	// check diagonal (down)
	for(i=0; i<8; i++)
	{
		for(j=0; j<8; j++)
		{
			if(field[i,j]==1 && field[i+1,j+1]==1 && field[i+2,j+2]==1)
			{
				if(i > 0 && j > 0)
				{
					if(field[i-1,j-1] == 0)
					{
						field[i-1,j-1] = 2;
						return true;
					}
				}
				if(i < 9 && j < 9)
				{
					if(field[i+1,j+1] == 0)
					{
						field[i+1,j+1] = 2;
						return true;
					}
				}
			}
		}
	}
	
	// check diagonal (up)
	for(i=0; i<8; i++)
	{
		for(j=2; j<10; j++)
		{
			if(field[i,j]==1 && field[i+1,j-1]==1 && field[i+2,j-2]==1)
			{
				if(i > 0 && j < 9)
				{
					if(field[i-1,j+1] == 0)
					{
						field[i-1,j+1] = 2;
						return true;
					}
				}
				if(i < 9 && j > 0)
				{
					if(field[i+1,j-1] == 0)
					{
						field[i+1,j-1] = 2;
						return true;
					}
				}
			}
		}
	}
	
	return false;
}