///widget_disable(widget);

// Disables the given widget from interfacing with the user, but still draws it.
// If used on a view, automatically disables all children widgets.

// widget               = Instance of the widget to disabled.

//Converts arguments to locals.
var widget = argument0;

//Disables widget.
with (widget)
{
    disabled = true;
}
