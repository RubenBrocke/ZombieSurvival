//Checks noise grid and places tiles on the map
for ( i = 0; i < ds_grid_width( myGrid ); i += 1 )
{
    for ( j = 0; j < ds_grid_height( myGrid ); j += 1 )
    {
        //If coordinate value in grid is higher than 0.2, place snow tile
        if (ds_grid_get(myGrid,i,j) > 0.2)
        tile_add(bck_mount,0,0,32,32,i*32,j*32,2)
        else
            {
            //If it's lower than 0.2 but higher than 0.1, place grass tile.
            if (ds_grid_get(myGrid,i,j) > -0.1)
            tile_add(bck_ground,0,0,32,32,i*32,j*32,2)
            }
        //If coordinate value in grid is lower than -0.2, place water tile
        if (ds_grid_get(myGrid,i,j) < -0.2)
        tile_add(bck_water,0,0,32,32,i*32,j*32,2)
        else
            {
            //If it's higher than -0.2 but lower than -0.1, place beach tile.
            if (ds_grid_get(myGrid,i,j) < -0.1)
            tile_add(bck_beach,0,0,32,32,i*32,j*32,2)
            }
    }
}

