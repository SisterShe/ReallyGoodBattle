///tween_quintic_in(step, total, start, final);

// Finds the given tween value following tween parameters at the current step.
// Note: Use within a step event and have an iterative variable for the argument step.

// This tweening starts at zero velocity, getting faster as it approaches the destination.

// step             = Current step for the tween. Use an iterative variable for current step.
// total            = Total number of steps for the tween to complete.
// start            = Start value of the tween.
// final            = Final value of the tween.

// @Return: Value for tween at current step, between start and end value.

//Converts arguments to locals.
var step = argument0;
var total = argument1;
var start = argument2;
var final = argument3;

//Calculates delta for value.
var delta = final - start;

//Tweening Math.
step /= total;
var result = delta * power(step, 5) + start;

//Returns result.
return result;
