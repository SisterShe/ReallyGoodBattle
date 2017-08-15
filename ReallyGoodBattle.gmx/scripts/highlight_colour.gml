///highlight_colour(on, off, [set]);

// Simple script that returns the color depending on mouseover. Takes two color arguments
// and an optional argument that determiens if it should set the drawing color also.

//  on            = Drawing color for mouseover.
//  off           = Drawing color for when normal.
//  set           = Optional argument. If drawing colour should be set to highlight colour. Default false.

// @Return: Colour for if mouseover or off.

//Converts arguments to locals.
var on = argument[0];
var off = argument[1];
if argument_count = 3 {var set = argument[2];} else {var set = false;}
var colour = undefined;

//Checks to see if mouserover.
if position_meeting(mouse_x,mouse_y,self)
{
    colour = on;
    if set draw_set_colour(on);
}
else
{
    colour = off;
    if set draw_set_colour(off);
}

//Returns highlight colour.
return color;
