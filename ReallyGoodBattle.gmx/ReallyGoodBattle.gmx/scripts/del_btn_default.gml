///del_btn_default();

//Restore default settings.
ini_open("Settings");

//Settings.
global.fullscreen = false;
global.musicvolume = 1;
global.sfxvolume = 1;
ini_write_real("Settings", "Fullscreen", false);
ini_write_real("Settings", "MusicVolume", 1);
ini_write_real("Settings", "SFXVolume", 1);

//Sets game resolution.
window_set_fullscreen(global.fullscreen);

//Destroy old keybindings.
for (var i=0; i < ds_list_size(global.keybindings); i++)
{
    var obj = ds_list_find_value(global.keybindings, i);
    suicide(obj);
}
ds_list_destroy(global.keybindings);

//Creates new default keybindings.
global.keybindings = ds_list_create();
var i = 0;
repeat (4)
{
    var data = instance_create(x, y, eng_data_persistent);
    with (data)
    {
        //Player 1 Default
        if (i = 0)
        {
            //Keyboard
            left_key_keyboard = ord("A");
            right_key_keyboard = ord("D");
            up_key_keyboard = ord("W");
            down_key_keyboard = ord("S");
            jump_key1_keyboard = vk_space;
            jump_key2_keyboard = vk_shift;
            attack_key1_keyboard = ord("F");
            attack_key2_keyboard = mb_left;
            one_key_keyboard = ord("1");
            two_key_keyboard = ord("2");
            three_key_keyboard = ord("3");
            four_key_keyboard = ord("4");
        }
        
        //Player 2 Default
        if (i = 1)
        {
            //Keyboard
            left_key_keyboard = vk_left;
            right_key_keyboard = vk_right;
            up_key_keyboard = vk_up;
            down_key_keyboard = vk_down;
            jump_key1_keyboard = vk_control;
            jump_key2_keyboard = vk_control;
            attack_key1_keyboard = vk_enter;
            attack_key2_keyboard = mb_right;
            one_key_keyboard = ord("1");
            two_key_keyboard = ord("2");
            three_key_keyboard = ord("3");
            four_key_keyboard = ord("4");
        }
        
        //Player 3 Default
        if (i = 2)
        {
            //Keyboard
            left_key_keyboard = ord("F");
            right_key_keyboard = ord("H");
            up_key_keyboard = ord("T");
            down_key_keyboard = ord("G");
            jump_key1_keyboard = ord("Y");
            jump_key2_keyboard = ord("Y");
            attack_key1_keyboard = ord("J");
            attack_key2_keyboard = ord("J");
            one_key_keyboard = ord("1");
            two_key_keyboard = ord("2");
            three_key_keyboard = ord("3");
            four_key_keyboard = ord("4");
        }
        
        //Player 4 Default
        if (i = 3)
        {
            //Keyboard
            left_key_keyboard = vk_numpad4;
            right_key_keyboard = vk_numpad6;
            up_key_keyboard = vk_numpad8;
            down_key_keyboard = vk_numpad5;
            jump_key1_keyboard = vk_numpad7;
            jump_key2_keyboard = vk_numpad7;
            attack_key1_keyboard = vk_numpad9;
            attack_key2_keyboard = vk_numpad9;
            one_key_keyboard = ord("1");
            two_key_keyboard = ord("2");
            three_key_keyboard = ord("3");
            four_key_keyboard = ord("4");
        }
        
        //Gamepad
        left_key_gamepad = gp_padl;
        right_key_gamepad = gp_padr;
        up_key_gamepad = gp_padu;
        down_key_gamepad = gp_padd;
        jump_key1_gamepad = gp_face1;
        jump_key2_gamepad = gp_shoulderlb;
        attack_key1_gamepad = gp_face3;
        attack_key2_gamepad = gp_shoulderrb;
        one_key_gamepad = gp_padu;
        two_key_gamepad = gp_padr;
        three_key_gamepad = gp_padd;
        four_key_gamepad = gp_padl;
        
        //Misc
        fullscreen_key = ord("T");
    }
    ds_list_add(global.keybindings, data);
    i++;
}
global.bindingkey = false;

//Saves keybindings.
for (var i = 0; i < 4; i++)
{
    var data = ds_list_find_value(global.keybindings, i);
    with (data)
    {
        //Keyboard
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Left", left_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Right", right_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Up", up_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Down", down_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Jump1", jump_key1_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Jump2", jump_key2_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Attack1", attack_key1_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Attack2", attack_key2_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_One", one_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Two", two_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Three", three_key_keyboard);
        ini_write_real("Keybindings", "Player" + string(i) + "Keyboard_Four", four_key_keyboard);
        
        //Gamepad
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Left", left_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Right", right_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Up", up_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Down", down_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Jump1", jump_key1_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Jump2", jump_key2_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Attack1", attack_key1_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Attack2", attack_key2_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_One", one_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Two", two_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Three", three_key_gamepad);
        ini_write_real("Keybindings", "Player" + string(i) + "Gamepad_Four", four_key_gamepad);
        
        //Misc
        ini_write_real("Keybindings", "Player" + string(i) + "Fullscreen", fullscreen_key);
    }  
} 

//Closes the settings file.
ini_close();

//Restarts the options room.
room_restart();
