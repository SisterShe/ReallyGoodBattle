///widget_button_keybind(view, x, y, key, text, font, color1, color2, steps, sprite, script);

// Creates a a button object that can be used to detect key binding input.
// The button is first clicked to select it, then the next input will replace current keybinding in it.

// view            = View to contain the button.
// x               = X position for button within the view.
// y               = Y position for button within the view.
// key             = Initial key for button to display.
// text            = Text for button to display.
// font            = Font for the button to use.
// color1          = Default drawing color for text.
// color2          = Highlight drawing color for text.
// steps           = Time (steps) for color to transition.
// sprite          = Sprite object for the button to use.
// script          = Code to execute once key is updated.

// Dependencies: obj_button_keybind, input_check_type, input_check_pressed, animation_tween_step, tween_quintic_out, string_keycheck

// @Return: Instance of obj_button_keybind created.

//Converts arguments to locals.
var view = argument0;
var xx = argument1;
var yy = argument2;
var key = argument3;
var text = argument4;
var font = argument5;
var color1 = argument6;
var color2 = argument7;
var steps = argument8;
var sprite = argument9;
var script = argument10;

//Relative view values.
var x1 = view.xx + xx;
var y1 = view.yy + yy;

//Creates button.
var obj = instance_create(x1, x1, obj_button_keybind);

//Sends over variables.
with obj
{
    sprite_index = sprite;
    self.view = view;
    self.xx = xx;
    self.yy = yy;
    self.key = key;
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
