///widget_button(view, x, y, text, font, color1, color2, steps, sprite, script);

// Creates a button object to execute code upon being clicked.

// view            = View to contain the button.
// x               = X position for button within the view.
// y               = Y position for button within the view.
// text            = Text for button to display.
// font            = Font for the button to use.
// color1          = Default drawing color for text.
// color2          = Highlight drawing color for text.
// steps           = Time (steps) for color to transition.
// sprite          = Sprite object for the button to use.
// script          = Code to execute once pressed.

// Dependencies: obj_button, input_check_type, input_check_pressed, animation_tween_step, tween_quintic_out

// @Return: Instance of obj_button created.

//Converts arguments to locals.
var view = argument0;
var xx = argument1;
var yy = argument2;
var text = argument3;
var font = argument4;
var color1 = argument5;
var color2 = argument6;
var steps = argument7;
var sprite = argument8;
var script = argument9;

//Relative view values.
var x1 = view.xx + xx;
var y1 = view.yy + yy;

//Creates button.
var obj = instance_create(x1, x1, obj_button);

//Sends over variables.
with obj
{
    sprite_index = sprite;
    self.view = view;
    self.xx = xx;
    self.yy = yy;
    self.text = text;
    self.font = font;
    self.color1 = color1;
    self.color2 = color2;
    self.steps = steps;
    self.script = script;
}

//Adds widget to view.
ds_list_add(view.widgets, obj);

//Returns button.
return obj;
