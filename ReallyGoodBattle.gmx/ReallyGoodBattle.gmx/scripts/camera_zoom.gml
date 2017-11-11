///camera_zoom(x_scale, y_scale, steps, percentage, inside);

// Zooms the camera by the given factor over given amount of steps.
// Make sure global.camera_index have been initilazied by using camera_setup().

// x_scale          = Scale factor for the x value of camera.
// y_scale          = Scale factor for the y value of camera.
// steps            = Number of steps for the zoom effect to complete.
// percentage       = If scaling is percentage (True) or a size value (False).
// inside           = Whether the camera will be clamped inside room (True) or allow outside (False).

// Dependencies: eng_camera_zoom, global.camera_index

//Creates variables.
var x_scale = argument0;
var y_scale = argument1;
var steps = argument2;
var percentage = argument3;
var inside = argument4;
var index = global.camera_index;

//Check if scaling is percentage.
if percentage
{
    //Calculates value of new scale.
    var x_value = view_wview[index] * x_scale;
    var y_value = view_hview[index] * y_scale;
}
else
{
    //Sets value of the scale.
    var x_value = x_scale;
    var y_value = y_scale;
}

//Calculates delta.
var x_delta = x_value - view_wview[index];
var y_delta = y_value - view_hview[index];

//Calculates step value.
var x_step = x_delta / steps;
var y_step = y_delta / steps;

//Create camera object.
var obj = instance_create(x, y, eng_camera_zoom);

//Sends over variales.
with obj
{
    self.inside = inside;
    self.x_step = x_step;
    self.y_step = y_step;
    self.index = index;
    alarm[0] = steps;    
}
