///widget_enable(widget);

// Enables the given widget to interface with the user again.
// If used on a view, automatically enables all children widgets,
// unless children already have been disabled.

// widget               = Instance of the widget to enable.

//Converts arguments to locals.
var widget = argument0;

//Disables widget.
with (widget)
{
    disabled = false;
}
