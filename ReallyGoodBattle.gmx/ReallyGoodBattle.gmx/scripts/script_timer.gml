///script_timer(steps, script, [arg1], [arg2], etc...);

// Starts a timer that counts down from the give amount of steps. 
// Once the timer ends, executes given script with optional given arguments.

// steps            = Total amount of steps for timer to complete.
// script           = Script to execute when timer ends.
// [arg1]..etc      = Optional argument. Arguments to be used in script once timer expires.

// Dependencies: eng_script_timer

//Converts arguments to locals.
var steps = argument[0];
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
var obj = instance_create(x, y, eng_script_timer);

//Sends over variables.
with (obj)
{
    self.script = script;
    self.args = ds_list_create();
    ds_list_copy(self.args, args);
    alarm[0] = steps;
}

//Clean up leaks.
ds_list_destroy(args);
