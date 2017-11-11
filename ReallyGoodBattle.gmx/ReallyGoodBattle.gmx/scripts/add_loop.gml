///add_loop(value, add, lower, upper);

// Adds a number to a given value, between a lower and upper value.
// Should the addtion go beyond these limits, it loops around.
// NOTE: Integer values ONLY!

//  value          = Initial value which will occur the addition.
//  add            = Addition value to be added to the value.
//  lower          = Lower limit of returned value. Loops to upper.
//  upper          = Upper limit of returned value. Loops to lower.

// @Return: Value with added value looped between lower and upper.

/*

TOdo later, implemnt fix for integer only.

//Creates Variables
var value = argument0;
var add = argument1;
var lower = argument2;
var upper = argument3;

//Checks if positive
if add > 0
{
    //Does the math.
    var total = add;
    repeat (total)
    {
        value += 1;
    }
    
    
    
    value = floor(value + 0.5);
    
    
}
else
{
    //Rounds
    value = ceil(value - 0.5);
}

//Returns
return value;
