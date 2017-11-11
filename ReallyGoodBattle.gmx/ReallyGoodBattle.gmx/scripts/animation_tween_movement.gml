///animation_tween_movement(object, tween, duration, x, y, relative);

// Tweens a movement of an object, moving it to the given position over a duration,
// following the parameters of given tween script to be used.

// object           = Instance of object to be moved towards location.
// tween            = Tweening script to be used for movement.
// duration         = Total duration for the tween to complete.
// x                = X-coordinate to move the object to.
// y                = Y-coordinate to move the object to.
// relative         = Wether coordinates is fixed (False) or relative to the instance (True).

// Dependencies: eng_animation_tween_movement, tween script used.

// @Return: Instance of eng_animation_tween_movement created.

//Converts arguments to locals.
var obj = argument0;
var tween = argument1;
var duration = argument2;
var xx = argument3;
var yy = argument4;
var relative = argument5;

//Relative Coordinates
if (relative)
{
    xx = obj.x + xx;
    yy = obj.y + yy;
}

//Creates engine object.
var eng = instance_create(xx, yy, eng_animation_tween_movement);

//Sends over variables.
with (eng)
{
    //Data variables.
    self.obj = obj;
    self.tween = tween;
    self.duration = duration;
    self.xx = xx;
    self.yy = yy;
    self.relative = relative;
    
    //Instance Variables
    start_x = obj.x;
    start_y = obj.y;
}
