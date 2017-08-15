///widget_checkbox(view, x, y, sprite, index1, index2, default, script);

// Creates a toggleable checkbox, that can be checked or unchecked.
// Use the variable "checked" to retrive the boolean if checked.

// view            = View to contain the checkbox.
// x               = X position for checkbox within the view.
// y               = Y position for checkbox within the view.
// sprite          = Sprite object for the checkbox to use.
// index1          = Image index for checkbox to use when unchecked.
// index2          = Image index for checkbox to use when checked.
// default         = Default position of box. False = unchecked, true = checked.
// script          = Code to be executed when checkbox is pressed.

// Dependencies: obj_checkbox

// @Return: Instance of obj_checkbox created.

//Converts arguments to locals.
var view = argument[0];
var xx = argument[1];
var yy = argument[2];
var sprite = argument[3];
var index1 = argument[4];
var index2 = argument[5];
var checked = argument[6];
var script = argument[7];

//Relative view values.
var x1 = view.xx + xx;
var y1 = view.yy + yy;

//Creates button.
var obj = instance_create(x1, x1, obj_checkbox);

//Sends over variables.
with obj
{
    sprite_index = sprite;
    self.view = view;
    self.xx = xx;
    self.yy = yy;
    self.index_off = index2;
    self.index_on = index1;
    self.checked = checked;
    self.script = script;
    event_user(0);
}

//Adds widget to view.
ds_list_add(view.widgets, obj);

//Returns button.
return obj;
