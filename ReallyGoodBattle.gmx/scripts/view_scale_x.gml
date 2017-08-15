///view_scale_x([index]);

// Returns the correct x scale factor relative to the given view to use for scaling.
// Useful for GUI and scaling objects/draw code to their correct sizes.

// index            = Optional argument. Index for view to use. Defaults at 0.

// @Return: An xscale factor to counterscale view.

//Creates variables
var index = 0;

//Optional arguments.
if argument_count = 1
{
    index = argument[0];
}

//Calculates scaling ratio.
var xratio = view_wview[index] / view_wport[index];

//Returns ratio.
return xratio;
