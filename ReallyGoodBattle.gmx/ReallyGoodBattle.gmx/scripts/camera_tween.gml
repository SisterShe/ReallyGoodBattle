///camera_tween(x, y, width, height, wport, hport, index, center, inside, tween, steps);

// Zooms and moves the camera to a new position from current one, using a tween.

// x                = x position in the room for the camera.
// y                = y position in the room for the camera.
// width            = Width of the camera in the room.
// height           = Height of the camera in the room.
// wport            = Width of the wport. Should be same as window size.
// hport            = Height of hport. Should be same as window size.
// index            = View index to use. Value from 0-7.
// center           = Whether the camera should be centered (True) or be in the top left corner (False).
// inside           = Whether the camera will be clamped inside room (True) or allow outside (False).
// tween            = Tween for the camera movement effect to use.
// steps            = View index to use. Value from 0-7.

// Dependencies: eng_camera_tween, global.camera_index, tweens

//Creates variables.
var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;
var wport = argument4;
var hport = argument5;
var index = argument6;
var center = argument7;
var inside = argument8;
var tween = argument9;
var steps = argument10;

//Checks for origin.
if (center)
{
    //Centers the camera positions.
    xx = xx - (width / 2);
    yy = yy - (height / 2);
}

//Create camera object.
var obj = instance_create(x, y, eng_camera_tween);

//Sends over variales.
with obj
{
    self.xx = xx;
    self.yy = yy;
    self.width = width;
    self.height = height;
    self.wport = wport;
    self.hport = hport;
    self.index = index;
    self.center = center;
    self.inside = inside;
    self.tween = tween;
    self.steps = steps;
    alarm[0] = steps;    
    event_user(0);
}
