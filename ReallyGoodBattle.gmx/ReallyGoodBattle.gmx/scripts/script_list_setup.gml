///script_list_setup(persistent);

// Creates a list object to hold scripts setup with script_setup.
// This list can then later execute all scripts stored within it.
// Note: If not used, make sure to destroy or it will cause memory leaks.

// persistent       = Boolean if instance and scripts within is persistent.

// Dependencies: eng_script, eng_script_list

// @Return: Instance of eng_script_list.

//Converts arguments to locals.
var persistence = argument0;

//Creates the timer object.
var obj = instance_create(x, y, eng_script_list);

//Sends over variables.
with (obj)
{
    list = ds_list_create();
    persistent = persistence;
}

//Returns script list.
return obj;
