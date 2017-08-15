///del_keybind_gamepad_up();

//Updates keybinding in settings.
var data = ds_list_find_value(global.keybindings, global.keybinding_player - 1);
with (data)
{
    up_key_gamepad = other.key;
}

//Saves new binding to file.
ini_open("Settings");
ini_write_real("Keybindings", "Player" + string(global.keybinding_player - 1) + "Gamepad_Up", key);
ini_close();
