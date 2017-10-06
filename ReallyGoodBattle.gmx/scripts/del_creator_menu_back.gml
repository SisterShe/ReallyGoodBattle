///del_creator_menu_back();

//Changes room back to main menu.
room_cfade(rm_mainmenu, room_seconds(0.1), c_black);
widget_disable(id);

//Saves Fighter Data.
ini_open("Settings");
global.fighter_count = ds_list_size(obj_fighter_container.list);
ini_write_real("Fighters", "Count", global.fighter_count);
for (var i = 0; i < global.fighter_count; i++)
{
    with (obj_fighter_container)
    {
        var fighter = ds_list_find_value(list, i);
        with (fighter)
        {
            ini_write_string("Fighters", "Name_" + string(i), name);
            ini_write_real("Fighters", "Red_" + string(i), red);
            ini_write_real("Fighters", "Green_" + string(i), green);
            ini_write_real("Fighters", "Blue_" + string(i), blue);
            ini_write_real("Fighters", "Model_" + string(i), model);
        }
    }
}
ini_close();
