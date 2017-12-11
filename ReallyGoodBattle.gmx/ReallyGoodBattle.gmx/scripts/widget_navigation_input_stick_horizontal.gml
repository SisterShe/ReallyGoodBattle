///widget_navigation_input_stick_horizontal(system, lstick, rstick, left, right, script, once);

// Adds an input command to the navigation system. This input commands runs
// given script if the input is detected as pressed. Supports gamepad, keyboard + mouse.

// system          = Navigation system to add the input into.
// lstick          = Boolean if left stick should be used.
// rstick          = Boolean if right stick should be used.
// left            = Boolean if left direction is used.
// right           = Boolean if right direction is used.
// script          = Script to be executed upon input press.
// once            = True if can only be run once. False for unlimited repeats.

//Converts arguments to locals.
var system = argument0;
var lstick = argument1;
var rstick = argument2;
var left = argument3;
var right = argument4;
var script = argument5;
var once = argument6;

//Creates data object.
var data = instance_create(x, y, eng_data);

//Stores data to object.
with (data)
{
    //Data Variables.
    self.script = script;
    self.once = once;
    self.lstick = lstick;
    self.rstick = rstick;
    self.left = left;
    self.right = right;
    
    //Instance Variables.
    haverun = false;
}

//Stores input to navigation system.
ds_list_add(system.custom_inputs_stick_horizontal, data);
