///widget_label(view, x, y, text, font, halign, valign, color1, outline, color2, thickness);

// Creates a label widget to display text at a position.

// view            = View to contain the label.
// x               = X position for label within the view.
// y               = Y position for label within the view.
// text            = Text for label to display.
// font            = Font for the label to use.
// halign          = Horizontal alignment to use for text.
// valign          = Vertical alignment to use for text.
// color1          = Drawing color for text.
// outline         = Boolean if label text should be drawn with an outline.
// color2          = Drawing color for the outline of text.
// thickness       = Thickness for outline.

// Dependencies: obj_label

// @Return: Instance of obj_label created.

//Converts arguments to locals.
var view = argument0;
var xx = argument1;
var yy = argument2;
var text = argument3;
var font = argument4;
var halign = argument5;
var valign = argument6;
var color1 = argument7;
var outline = argument8;
var color2 = argument9;
var thickness = argument10;

//Relative view values.
var x1 = view.xx + xx;
var y1 = view.yy + yy;

//Creates button.
var obj = instance_create(x1, x1, obj_label);

//Sends over variables.
with obj
{
    self.view = view;
    self.xx = xx;
    self.yy = yy;
    self.text = text;
    self.font = font;
    self.halign = halign;
    self.valign = valign;
    self.color1 = color1;
    self.outline = outline;
    self.color2 = color2;
    self.thickness = thickness;
}

//Adds widget to view.
ds_list_add(view.widgets, obj);

//Returns label.
return obj;
