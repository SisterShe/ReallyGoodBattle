///round_normal(value);

// Rounds the given value to the nearest integer as you would normally expect.
// Game Makers built in round function rounds to nearest even value. 

//  value          = Value to be rounded.

// @Return: Rounded integer of value.

//Creates Variables
var value = argument0;

//Checks if positive
if value > 0
{
    //Rounds
    value = floor(value + 0.5);
}
else
{
    //Rounds
    value = ceil(value - 0.5);
}

//Returns
return value;
