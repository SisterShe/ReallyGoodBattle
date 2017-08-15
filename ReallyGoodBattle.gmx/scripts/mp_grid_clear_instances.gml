///mp_grid_clear_instances(grid, object, prec, xstart, ystart, hcells, vcells, cellwidth, cellheight);

// Clears the specified mp_grid in all cells for collosion with object.
// Does this by creating a second grid and adding the object to that.
// Afterwards it converts it to a ds_grid and uses that to find indexes to clear on main grid.

//  grid          = The index of the grid which cells are to be cleared.
//  object        = The object to clear from grid. Can be an instance or a resource.
//  prec          = Whether the check is based on pixel-perfect collisions (true) or its bounding box in general (false).

// The following arguments should match the same as those used to create the original grid.
// I know... Blame yoyo, no get methods for mp_grid to acquire these.

//  xstart        = Starting x coordinate of the mp_grid in the room.
//  ystart        = Starting y coordinate of the mp_grid in the room.
//  hcells        = Number of horizontal cells that the mp_grid will contain.
//  vcells        = Number of vertical cells that the mp_grid will contain.
//  cellwidth     = The width (in pixels) of each individual cell of the mp_grid.
//  cellheight    = The height (in pixels) of each individual cell of the mp_grid.

//Converts arguments to locals.
var grid = argument0;
var obj = argument1;
var prec = argument2;
var x_start = argument3;
var y_start = argument4;
var hcells = argument5;
var vcells = argument6;
var celwidth = argument7;
var cellheight = argument8;

//Creates the clone grid.
var grid_clone = mp_grid_create(x_start, y_start, hcells, vcells, celwidth, cellheight);

//Adds object to grid.
mp_grid_add_instances(grid_clone, obj, prec);

//Converts the mp_grid to a ds_grid.
var ds_grid = ds_grid_create(hcells, vcells);
mp_grid_to_ds_grid(grid_clone, ds_grid);

//Creates variables for loop.
var columns = ds_grid_width(ds_grid);
var rows = ds_grid_height(ds_grid);
var c = 0;

//Enters a loop for each column.
repeat (columns)
{
    //Cell Position Variables
    var xx = c;
    var r = 0;
    
    //Enters a loop for each row.
    repeat (rows)
    {
        //Row position variable.
        var yy = r;
    
        //Gets the value of the cell.
        var index = ds_grid_get(ds_grid, xx, yy);
        
        //Checks the cell to see if it's occupied.
        if index = 1
        {
            //Clears the cell on the mp_grid.
            mp_grid_clear_cell(grid, xx, yy);
        }
        
        //Increments row for next loop.
        r++;
    }

    //Increments column for next loop.
    c++;
}

//Destroys grids to avoid leaks.
mp_grid_destroy(grid_clone);
ds_grid_destroy(ds_grid);
