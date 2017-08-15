//array_to_dslist(array);

// Converts given array into a ds_list, carrying over all values
// stored in the array. Creates a new list and returns this.

//  array              = Array to be converted.

// @Return: Index of ds_list.

//Creates variables.
var array = argument0;
var list = ds_list_create(); 
var size = array_length_1d(list) - 1;
var i = 0;

//Sweeps through the array.
for (i=0; i < size; i++)
{
    //Adds value.
    ds_list_add(list, array[i]);
}

//Returns list.
return list;
