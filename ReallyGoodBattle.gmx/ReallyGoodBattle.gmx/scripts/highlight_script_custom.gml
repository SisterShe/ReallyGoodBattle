///highlight_script_custom(On, Off);

// Simple script that runs two different scripts depending on mouseover.
// Scripts run is custom scripts setup in the eng_script_list.

//  On            = Instance of eng_script_list to run on mouseover.
//  Off           = Instance of eng_script_list to run normally.

// Dependencies: eng_script, eng_script_list

//Converts arguments to locals.
var on = argument0;
var off = argument1;

//Checks to see if mouserover.
if position_meeting(mouse_x,mouse_y,self)
{
    with (on)
    {
        event_user(0);
    }
}
else
{
    with (off)
    {
        event_user(0);
    }
}
