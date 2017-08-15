///widget_hide(widget);

// Disables the given widget from interfacing with the user and disables drawing.
// If used on a view, automatically hides all children widgets of the view aswell.

// widget               = Instance of the widget to hide.

//Converts arguments to locals.
var widget = argument0;

//Hides widget.
with (widget)
{
    hidden = true;
}
