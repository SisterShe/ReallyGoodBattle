///widget_navigation_select_position(system, position);

// Selects the widget at the goven position in the navigation system.
// NOTE: Position must exist within the navigation system.

// system          = Navigation system to contain the widget.
// position        = Position of widget to be selected.

//Converts arguments to locals.
var system = argument0;
var position = argument1;

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
    
    //Finds widget.
    selected = ds_list_find_value(widgets, position)
    with (selected)
    {
        selected = true;
    }
    
    //Updates position.
    self.position = position;
}
