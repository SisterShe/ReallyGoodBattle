///del_keybind_keyboard_right();

//Updates keybinding in settings.
var data = ds_list_find_value(global.keybindings, global.keybinding_player - 1);
with (data)
{
    right_key_keyboard = other.key;
}

//Saves new binding to file.
ini_open("Settings");
ini_write_real("Keybindings", "Player" + string(global.keybinding_player - 1) + "Keyboard_Right", key);
ini_close();
