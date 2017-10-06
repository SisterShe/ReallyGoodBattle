///del_creator_menu_update();

//Check to see if fighter exists.
with (obj_fighter_container)
{
    if (selected = noone or selected = undefined or selected = 0)
    exit;
}

//Goes to update current fighter.
room_cfade(rm_fighter_creator, room_seconds(0.1), c_black);
widget_disable(id);
