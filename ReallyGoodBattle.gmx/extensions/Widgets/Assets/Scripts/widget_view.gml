///widget_view(x, y, width, height, [view]);

// Creates a view widgets to contain other widgets. These widgets are placed relative within the view.
// When manipulated the view automatically updates children with scale, position, rotation, etc.

// x               = X position for view in the room.
// y               = Y position for view in the room.
// width           = Width of the view. Widgets outside bounds will not be drawn.
// height          = Height of the view. Widgets outside bounds will not be drawn.
// [view]          = Optional argument. Parent view for the view.

// Dependencies: obj_view

// @Return: Instance of obj_view created.

//Converts arguments to locals.
var xx = argument[0];
var yy = argument[1];
var width = argument[2];
var height = argument[3];
var view = noone;

//Default view values.
var x1 = xx;
var y1 = yy;

//Optional arguments.
if (argument_count = 5)
{
    view = argument[4];
    x1 = view.xx + xx;
    y1 = view.yy + yy;
}

//Creates view.
var obj = instance_create(x1, y1, obj_view);

//Sends over variables.
with obj
{
    self.xx = xx;
    self.yy = yy;
    self.width = width;
    self.height = height;
    self.view = view;
}

//Returns view.
return obj;
