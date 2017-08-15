///highlight_sprite([On], [Off]);

// Simple script that changes the sprite index on mouseover. Takes optional index arguments.

//  On            = Optional argument. The sprite resource index on mouseover.
//  Off           = Optional argument. The sprite resource index as normal.

//Converts arguments to locals.
if argument_count >= 1 {var on = argument[0];} else {var on = 1;}
if argument_count >= 2 {var off = argument[1];} else {var off = 0;}

//Checks to see if mouserover.
if position_meeting(mouse_x,mouse_y,self)
{
    sprite_index = on;
}
else
{
    sprite_index = off;
}
