///camera_move(x, y, steps, center, inside);

// Moves the camera to the given x and y position over given amount of steps.
// Make sure global.camera_index have been initilazied by using camera_setup().

// x                = x position to move camera to.
// y                = y position to move camera to.
// steps            = Number of steps for movement to complete.
// center           = Whether the camera should be centered (True) or be in the top left corner (False).
// inside           = Whether the camera will be clamped inside room (True) or allow outside (False).

// Dependencies: eng_camera_move, global.camera_index

//Creates variables.
var xx = argument0;
var yy = argument1;
var steps = argument2;
var center = argument3;
var inside = argument4;
var index = global.camera_index;

//Calculates distance, origin, angle and speed.
var x_origin = view_xview[index] + (view_wview[index] / 2)
var y_origin = view_yview[index] + (view_hview[index] / 2)
var distance = point_distance(x_origin, y_origin, xx, yy);
var angle = point_direction(x_origin, y_origin, xx, yy);
var spd = distance / steps;

//Create camera object.
var obj = instance_create(x_origin, y_origin, eng_camera_move);

//Sends over variales.
with obj
{
    self.inside = inside;
    self.center = center;
    self.index = index;
    speed = spd;
    direction = angle;
    alarm[0] = steps + 1;    
}
