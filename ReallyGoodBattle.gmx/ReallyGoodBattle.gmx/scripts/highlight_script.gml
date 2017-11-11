///highlight_script(On, Off);

// Simple script that runs two different scripts depending on mouseover.

//  On            = Script to be run on mouserover.
//  Off           = Script to be run as normal.

//Converts arguments to locals.
var on = argument0;
var off = argument1;

//Checks to see if mouserover.
if position_meeting(mouse_x,mouse_y,self)
{
    script_execute(on);
}
else
{
    script_execute(off);
}
