//Load Keybindings for Player.
var data = ds_list_find_value(global.keybindings, global.keybinding_player - 1);
with (data)
{
    //Keyboard
    var left_key_keyboard = self.left_key_keyboard;
    var right_key_keyboard = self.right_key_keyboard;
    var up_key_keyboard = self.up_key_keyboard;
    var down_key_keyboard = self.down_key_keyboard;
    var jump_key1_keyboard = self.jump_key1_keyboard;
    var jump_key2_keyboard = self.jump_key2_keyboard;
    var attack_key1_keyboard = self.attack_key1_keyboard;
    var attack_key2_keyboard = self.attack_key2_keyboard;

    //Gamepad
    var left_key_gamepad = self.left_key_gamepad;
    var right_key_gamepad = self.right_key_gamepad;
    var up_key_gamepad = self.up_key_gamepad;
    var down_key_gamepad = self.down_key_gamepad;
    var jump_key1_gamepad = self.jump_key1_gamepad;
    var jump_key2_gamepad = self.jump_key2_gamepad;
    var attack_key1_gamepad = self.attack_key1_gamepad;
    var attack_key2_gamepad = self.attack_key2_gamepad;
}

//Updates Buttons.
with (global.button_data)
{
    //Gamepad
    btn_gamepad_left.key = left_key_gamepad;
    btn_gamepad_right.key = right_key_gamepad;
    btn_gamepad_up.key = up_key_gamepad;
    btn_gamepad_down.key = down_key_gamepad;
    btn_gamepad_jump1.key = jump_key1_gamepad;
    btn_gamepad_jump2.key = jump_key2_gamepad;
    btn_gamepad_attack1.key = attack_key1_gamepad;
    btn_gamepad_attack2.key = attack_key2_gamepad;
    
    //Keyboard
    btn_keyboard_left.key = left_key_keyboard;
    btn_keyboard_right.key = right_key_keyboard;
    btn_keyboard_up.key = up_key_keyboard;
    btn_keyboard_down.key = down_key_keyboard;
    btn_keyboard_jump1.key = jump_key1_keyboard;
    btn_keyboard_jump2.key = jump_key2_keyboard;
    btn_keyboard_attack1.key = attack_key1_keyboard;
    btn_keyboard_attack2.key = attack_key2_keyboard;
}


