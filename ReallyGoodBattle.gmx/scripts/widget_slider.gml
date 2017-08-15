///widget_slider(view, x, y, sprite1, sprite2, lower, upper, value, script, constant);

// Creates a slider with a wheel that can be moved left or right.
// Use the variable "value" to retrive the current value of wheel.

// view            = View to contain the slider.
// x               = X position for slider within the view.
// y               = Y position for slider within the view.
// sprite1         = Sprite object for the slider to use.
// sprite2         = Sprite object for the wheel to use.
// lower           = Minimum value of bar, when to the left.
// upper           = Maximum value of the bar, when to the right.
// value           = Initial value of the slider bar.
// script          = Script to be executed when wheel is released.
// constant        = Boolean if script is run everytime wheel moves.

// Dependencies: obj_slider_bar, obj_slider_wheel

// @Return: Instance of obj_slider_bar created.

//Converts arguments to locals.
var view = argument[0];
var xx = argument[1];
var yy = argument[2];
var sprite1 = argument[3];
var sprite2 = argument[4];
var lower = argument[5];
var upper = argument[6];
var value = argument[7];
var script = argument[8];;
var constant = argument[9];;

//Relative view values.
var x1 = view.xx + xx;
var y1 = view.yy + yy;

//Creates button.
var obj = instance_create(x1, x1, obj_slider_bar);

//Sends over variables.
with obj
{
    sprite_index = sprite1;
    self.view = view;
    self.xx = xx;
    self.yy = yy;
    self.lower = lower;
    self.upper = upper;
    self.value = value;
    self.script = script;
    self.constant = constant;
    event_user(0);
    wheel.sprite_index = sprite2;
}

//Adds widget to view.
ds_list_add(view.widgets, obj);

//Returns button.
return obj;
