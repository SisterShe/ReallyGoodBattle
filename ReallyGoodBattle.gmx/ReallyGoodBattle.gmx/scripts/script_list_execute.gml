///script_list_execute(list, destroy);

// Executes all scripts within the list in the order they were added.

// list             = Instance of eng_script_list that stores all scripts to be executed.
// destroy          = Boolean if list should destroy itself and all scripts after execution.

// Dependencies: eng_script, eng_script_list

//Converts arguments to locals.
var list = argument0;
var destroy = argument1;

//Executes scripts.
with (list)
{
    self.destroy = destroy;
    event_user(0);
}
