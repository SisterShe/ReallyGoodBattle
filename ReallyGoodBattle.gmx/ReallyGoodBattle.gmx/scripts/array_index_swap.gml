///array_index_swap(list, index_1, index_2);

// Swaps the position of two values in an array list.

//  list               = Array list which indexes are to be swapped.
//  index_1            = First index to be swapped.
//  index_2            = Second index to be swapped.

//Converts arguments to locals.
var list = argument0;
var i1 = argument1;
var i2 = argument2;

//Saves values in list.
var v1 = list[i1];
var v2 = list[i2];

//Swaps values.
list[@i1] = v2;
list[@i2] = v1;
