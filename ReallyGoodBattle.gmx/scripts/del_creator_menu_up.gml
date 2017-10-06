///del_creator_menu_up();

//Runs code from container.
with (obj_fighter_container)
{
    //Selects next fighter in container.
    index = clamp(index + 1, 0, ds_list_size(list) -1);
    selected = ds_list_find_value(list, index);
    
    //Check if instance exists.
    if (selected = noone or selected = undefined or selected = 0)
    {
        var color = c_white;
        var name = "No Fighters";
    }
    else
    {
        //Creates color.
        with (selected)
        {
            var color = make_colour_rgb(red, green, blue);
            var name = self.name;
        }
    }
    
    //Updates Label
    global.fighter_label.text = name;
    global.fighter_label.color1 = color;
}
