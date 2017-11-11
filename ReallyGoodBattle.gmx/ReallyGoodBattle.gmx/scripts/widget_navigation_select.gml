///widget_navigation_select(system, widget);

// Selects the given widget in the navigation system.
// NOTE: Widget must exist within the navigation system.

// system          = Navigation system to contain the widget.
// widget          = Instance of widget to be selected.

//Converts arguments to locals.
var system = argument0;
var widget = argument1;

//Runs code from system.
with (system)
{
    //Check if widget selected.
    if (selected != noone)
    {
        //Deselects currently selected widget.
        with (selected)
        {
            selected = false;
        }
    }
    
    //Selects given widget.
    selected = widget;
    with (widget)
    {
        selected = true;
    }
    
    //Updates position.
    position = ds_list_find_index(widgets, widget);
}
