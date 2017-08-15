///widget_show(widget);

// Enables the given widget to interface with the user and enables drawing.
// If used on a view, automatically enables all children widgets of the view aswell, 
// unless children already individually hidden.

// widget               = Instance of the widget to hide.

//Converts arguments to locals.
var widget = argument0;

//Shows widget.
with (widget)
{
    hidden = false;
}
