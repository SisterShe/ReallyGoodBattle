///view_position_y(value, [index]);

// Returns the correct y position for the argument value relative to the view.
// Takes into account position of view, aswell as scaling to return correct value.
// Useful for GUI and placing objects at their correct positions.

// value            = The desired x position.
// index            = Optional argument. Index for view to use. Defaults at 0.

// @Return: y position relative for view.

//Converts arguments to variables.
var value = argument[0];
var index = 0;

//Optional arguments.
if argument_count = 2
{
    index = argument[1];
}

//Calculates scaling ratio.
var yratio = view_hview[index] / view_hport[index];

//Calculates position.
var position = (value - view_yport[index]) * yratio + view_yview[index];

//Returns position.
return position;
