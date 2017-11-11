///widget_navigation_add(system, widget);

// Adds given widget to the navigation system in the next position.

// system          = Navigation system to contain the widget.
// widget          = Instance of widget to be added to system.

//Converts arguments to locals.
var system = argument0;
var widget = argument1;

//Disables mouse interaction for widget.
with (widget)
{
    mouse_enabled = false;
}

//Adds widget to system.
with (system)
{
    ds_list_add(widgets, widget);
}
