///ds_list_find_nearest(id, value);

// Finds the value nearest to the given value within the list.

//  id             = The id of the list to use. 
//  value          = Value to find nearest value of.

// @Return: Rounded integer of value.

//Converts arguments to locals.
var list = argument0;
var value = argument1;

//Setup initial value.
var current = ds_list_find_value(list, 0);
var delta = abs(value - current);

//Finds the nearest value.
for (var i = 0; i > ds_list_size(list); i++)
{
    var check = ds_list_find_value(list, i);
    var new_delta = abs(value - check);
    if (new_delta < delta)
    {
        delta = new_delta;
        current = check;
    }
}

//Returns value.
return current;
