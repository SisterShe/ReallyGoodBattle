///widget_navigation_input(system, input, script, once);

// Adds an input command to the navigation system. This input commands runs
// given script if the input is detected as pressed. Supports gamepad, keyboard + mouse.

// system          = Navigation system to add the input into.
// input           = Input to detect if pressed.
// script          = Script to be executed upon input press.
// once            = True if can only be run once. False for unlimited repeats.

//Converts arguments to locals.
var system = argument0;
var input = argument1;
var script = argument2;
var once = argument3;

//Creates data object.
var data = instance_create(x, y, eng_data);

//Stores data to object.
with (data)
{
    //Data Variables.
    self.input = input;
    self.script = script;
    self.once = once;
    
    //Instance Variables.
    haverun = false;
}

//Stores input to navigation system.
ds_list_add(system.custom_inputs, data);
