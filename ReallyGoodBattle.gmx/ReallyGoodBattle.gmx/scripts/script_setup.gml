///script_setup(list, script, [arg1], [arg2], etc...);

// Setups a script object which can be executed later. Takes optional arguments.
// Is useful to setup generic delegate and callback functions for systems.

// list             = Instance of eng_script_list to hold the script.
// script           = Script to be executed when you want to.
// [arg1]..etc      = Optional argument. Arguments to be used in script.

// Dependencies: eng_script, eng_script_list

// @Return: Instance of eng_script that holds the script data.

//Converts arguments to locals.
var list = argument[0];
var script = argument[1];

//Optional Arguments
var args = ds_list_create();
var i = 2;
repeat (argument_count - 2)
{
    ds_list_add(args, argument[i]);
    i++;
}

//Creates the timer object.
var obj = instance_create(x, y, eng_script);

//Sends over variables.
with (obj)
{
    self.script = script;
    self.args = ds_list_create();
    ds_list_copy(self.args, args);
    persistent = list.persistent;
}

//Clean up leaks.
ds_list_destroy(args);

//Stores script to list.
with (list)
{
    ds_list_add(self.list, obj);
}

//Returns script object.
return obj;
