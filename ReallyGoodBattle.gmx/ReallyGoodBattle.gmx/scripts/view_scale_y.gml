///view_scale_y([index]);

// Returns the correct y scale factor relative to the given view to use for scaling.
// Useful for GUI and scaling objects/draw code to their correct sizes.

// index            = Optional argument. Index for view to use. Defaults at 0.

// @Return: An yscale factor to counterscale view.

//Creates variables
var index = 0;

//Optional arguments.
if argument_count = 1
{
    index = argument[0];
}

//Calculates scaling ratio.
var yratio = view_hview[index] / view_hport[index];

//Returns ratio.
return yratio;
