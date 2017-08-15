///highlight_image([On], [Off]);

// Simple script that changes the sprite image on mouseover. Takes optional index arguments.

//  On            = Optional argument. The image index on mouseover.
//  Off           = Optional argument. The image index as normal.

//Converts arguments to locals.
if argument_count >= 1 {var on = argument[0];} else {var on = 1;}
if argument_count >= 2 {var off = argument[1];} else {var off = 0;}

//Checks to see if mouserover.
if position_meeting(mouse_x,mouse_y,self)
{
    image_index = on;
}
else
{
    image_index = off;
}
