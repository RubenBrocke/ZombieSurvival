noiseObject = NshCreatePerlin( 4, 4, 1, floor(random(100)) /*random seed*/);

//Creates and fills noise grid
myGrid = ds_grid_create( 256, 256 );

for ( i = 0; i < ds_grid_width( myGrid ); i += 1 )
{
    for ( j = 0; j < ds_grid_height( myGrid ); j += 1 )
    {
        ds_grid_set( myGrid, i,j, NshGetPerlin( noiseObject, i/ds_grid_width( myGrid ), j/ds_grid_height( myGrid )) );
    }
}
