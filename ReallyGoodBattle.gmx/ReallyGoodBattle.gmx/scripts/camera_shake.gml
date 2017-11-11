///camera_shake(magnitude, steps, inside);

// Shakes the camera with a shake effect over the given amount of steps.
// Make sure global.camera_index have been initilazied by using camera_setup().
// Recommended usage is for ingame cinematics and not gameplay camera.

// magnitude        = Maximum number of pixels for screen to shake.
// steps            = Number of steps for shake to complete.
// inside           = Whether the camera will be clamped inside room (True) or allow outside (False).

// Dependencies: eng_camera_shake, global.camera_index

//Creates variables.
var magnitude = argument0;
var steps = argument1;
var inside = argument2;
var index = global.camera_index;

//Create camera object.
var obj = instance_create(x, y, eng_camera_shake);

//Sends over variables.
with (obj)
{
    self.magnitude = magnitude;
    self.steps = steps;
    self.inside = inside;
    self.index = index;
    alarm[0] = steps;
    x_prev = 0;
    y_prev = 0;    
}

//Starts deleayed creation code.
with (obj)
{
    event_user(0);
}
