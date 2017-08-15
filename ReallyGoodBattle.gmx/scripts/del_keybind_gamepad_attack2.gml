///del_keybind_gamepad_attack2();

//Updates keybinding in settings.
var data = ds_list_find_value(global.keybindings, global.keybinding_player - 1);
with (data)
{
    attack_key2_gamepad = other.key;
}

//Saves new binding to file.
ini_open("Settings");
ini_write_real("Keybindings", "Player" + string(global.keybinding_player - 1) + "Gamepad_Attack2", key);
ini_close();
