//ds_list_toarray(array, list)

// Converts given ds_list into an array, carrying over all values stored in the list. 
// Note: You must still destroy the list manually to prevent memory leaks.
// Note: Overrides any value stored in the array.

//  array              = Array for values to be copied to.
//  list               = List contained all data to copy from.

//Creates variables.
var array = argument0;
var list = argument1;
var size = ds_list_size(list);
var i = 0;

//Setups array.
array[@size] = 0;

//Sweeps through the list.
for (i=0; i < size; i++)
{
    //Adds value to array.
    array[@i] = ds_list_find_value(list, i);
}
