///draw_grid(start_x, start_y, cellwidth, cellheight, thickness, width, height);

// Draws a grid at the given position in the room at the gives size and thickness.

//  start_x       = Initial x position of the grid.
//  start_y       = Initial y position of the grid.
//  cellwidth     = Width of a cell in the grid.
//  cellheight    = Height of a cell in the grid.
//  thickness     = Thickness of the lines in pixels.
//  width         = The total width of the grid.
//  height        = The total height of the grid.

//Converts arguments to locals.
var start_x = argument0;
var start_y = argument1;
var cellwidth = argument2;
var cellheight = argument3;
var thickness = argument4;
var width = argument5;
var height = argument6;

//Creates Variables.
var xx = start_x;
var yy = start_y;
var x_repeat = floor(width / cellwidth);
var y_repeat = floor(height / cellheight);

//Enters loop for x lines.
repeat y_repeat //Reversed
{
    //Draw Lines.
    draw_line_width(xx, yy, xx + width, yy, thickness);
    yy += cellheight;
}

//Enters loop for y lines.
repeat x_repeat //Reversed
{
    //Draw Lines.   
    draw_line_width(xx, yy, xx, yy - height, thickness);
    xx += cellwidth;
}
