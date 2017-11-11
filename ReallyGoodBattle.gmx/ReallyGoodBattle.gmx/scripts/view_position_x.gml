///view_position_x(value, [index]);

// Returns the correct x position for the argument value relative to the view.
// Takes into account position of view, aswell as scaling to return correct value.
// Useful for GUI and placing objects at their correct positions.

// value            = The desired x position.
// index            = Optional argument. Index for view to use. Defaults at 0.

// @Return: x position relative for view.

//Converts arguments to variables.
var value = argument[0];
var index = 0;

//Optional arguments.
if argument_count = 2
{
    index = argument[1];
}

//Calculates scaling ratio.
var xratio = view_wview[index] / view_wport[index];

//Calculates position.
var position = (value - view_xport[index]) * xratio + view_xview[index];

//Returns position.
return position;
