//array_value_index(array, value);

// Returns the first index of the given value within the array.
// If value cannot be found, returns noone.

//  array              = Array list to run code on.
//  value              = Value to be checked.

// @Return: Index of value in array. None if not found.

//Creates variables.
var list = argument0;
var value = argument1;
var size = array_length_1d(list) - 1;
var i = 0;

//Sweeps through the array.
for (i=0; i < size; i++)
{
    //Checks index.
    if list[i] = value
    {
        return i;
    }
}

//Returns noone.
return noone;
