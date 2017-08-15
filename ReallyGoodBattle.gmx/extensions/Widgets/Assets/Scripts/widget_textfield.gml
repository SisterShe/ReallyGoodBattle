///widget_textfield(view, x, y, text, font, color1, color2, sprite, limit, [script], [key]);

// Creates a singleline textfield for user to input text.
// Use the variable "input" to retrive the stored text.

// view            = View to contain the textfield.
// x               = X position for textfield within the view.
// y               = Y position for textfield within the view.
// text            = Text to be displayed when not selected.
// font            = Drawing font to be used for text.
// color1          = Color to be used for the default text.
// color2          = Color to be used for drawing input text.
// sprite          = Sprite object for the textfield to use.
// limit           = Total character limit for textfield to use.
// [script]        = Optional argument. Code to be executed when key is pressed.
// [key]           = Optional argument. Input key to activate script.

// Dependencies: obj_textfield

// @Return: Instance of obj_textfield created.

//Converts arguments to locals.
var view = argument[0];
var xx = argument[1];
var yy = argument[2];
var text = argument[3];
var font = argument[4];
var color1 = argument[5];
var color2 = argument[6];
var sprite = argument[7];
var limit = argument[8];
var script = noone;
var key = noone;

//Optional arguments.
if (argument_count = 10)
{
    var script = argument[9];
    var key = argument[10];
}

//Relative view values.
var x1 = view.xx + xx;
var y1 = view.yy + yy;

//Creates button.
var obj = instance_create(x1, x1, obj_textfield);

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
    self.limit = limit;
    self.script = script;
    self.key = key;
}

//Adds widget to view.
ds_list_add(view.widgets, obj);

//Returns button.
return obj;
