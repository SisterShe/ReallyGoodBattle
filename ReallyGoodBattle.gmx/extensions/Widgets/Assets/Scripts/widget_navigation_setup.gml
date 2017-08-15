///widget_navigation_setup(loops, input_up_1, input_up_2, input_down_1, input_down_2, left_stick, right_stick);

// Setup a ladderal navigation system for navigating widgets with keyboard and controller.
// You can then add widgets to the system afterwards with widget_navigation_setup.

// loops                 = Boolean if the navigation system loops when at edge.
// input_up_1            = Input for going in the upwards direction.
// input_up_2            = Input for going in the upwards direction.
// input_down_1          = Input for going in the downwards direction.
// input_down_2          = Input for going in the downwards direction.
// left_stick            = Boolean if left stick can be used for navigation.
// right_stick           = Boolean if left stick can be used for navigation.

// Dependencies: obj_navigation_system

// @Return: Instance of obj_navigation_system created.

//Converts arguments to locals.
var loops = argument0;
var input_up_1 = argument1;
var input_up_2 = argument2;
var input_down_1 = argument3;
var input_down_2 = argument4;
var left_stick = argument5;
var right_stick = argument6;

//Creates button.
var obj = instance_create(x, y, obj_navigation_system);

//Sends over variables.
with obj
{
    self.loops = loops;
    self.input_up_1 = input_up_1;
    self.input_up_2 = input_up_2;
    self.input_down_1 = input_down_1;
    self.input_down_2 = input_down_2;
    self.left_stick = left_stick;
    self.right_stick = right_stick;
}

//Returns button.
return obj;
