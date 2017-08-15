///tween_find_step(tween, value, total, start, final);

// Finds the nearest step of a tween which gives the given value.

// tween            = Tween to use to find the value.
// value            = The value to find the step at.
// total            = Total number of steps for the tween to complete.
// start            = Start value of the tween.
// final            = Final value of the tween.

// Dependencies: tween script used.
// @Return: Step for tween that gives value.

//Converts arguments to locals.
var tween = argument0;
var value = argument1;
var total = argument2;
var start = argument3;
var final = argument4;

//Creates variables.
var list = ds_list_create();
var step = 0;

//Iterates through step.
repeat (total)
{
    //Does Tweening
    var tween_value = script_execute(tween, step, total, start, final);
    
    //Adds tween to list.
    ds_list_add(list, tween_value);
    
    //Incremtation
    step++;
}

//Finds the nearest value for tween.

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

//Finds step for value.
step = ds_list_find_index(list, current);

//Cleans up leaks.
ds_list_destroy(list);

//Returns step.
return step;
