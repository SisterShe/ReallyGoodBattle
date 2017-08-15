///camera_setup(x, y, width, height, wport, hport, index, center, inside);

// Setups the camera within the room. Useful for initial setup before camera movement effects.
// Also initializes the global.camera_index used for all subesquent camera effects.

// x                = x position in the room for the camera.
// y                = y position in the room for the camera.
// width            = Width of the camera in the room.
// height           = Height of the camera in the room.
// wport            = Width of the wport. Should be same as window size.
// hport            = Height of hport. Should be same as window size.
// index            = View index to use. Value from 0-7.
// center           = Whether the camera should be centered (True) or be in the top left corner (False).
// inside           = Whether the camera will be clamped inside room (True) or allow outside (False).

//Creats variables.
var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;
var wport = argument4;
var hport = argument5;
var index = argument6;
var center = argument7;
var inside = argument8;

//Sets global variable.
global.camera_index = index;

//Enables views.
view_enabled = true;

//Loops through all views.
for (var i = 0; i > 7; i++) 
{
    //Makes view invisble.
    if i != index view_visible[i] = false;
}

//Makes the view visible.
view_visible[index] = true;

//Checks for origin.
if center
{
    //Centers the camera.
    view_xview[index] = xx - (width / 2);
    view_yview[index] = yy - (height / 2);
}
else
{
    //Moves the camera.
    view_xview[index] = xx;
    view_yview[index] = yy;
}

//Check if inside.
if inside
{
    //Clamps values inside room.
    view_xview[index] = clamp(view_xview[index], 0, room_width - view_wview[index]);
    view_yview[index] = clamp(view_yview[index], 0, room_height - view_hview[index]);
}

//Updates the width and height.
view_wview[index] = width;
view_hview[index] = height;

//Updates ports on screen.
view_wport[index] = wport;
view_hport[index] = hport;
