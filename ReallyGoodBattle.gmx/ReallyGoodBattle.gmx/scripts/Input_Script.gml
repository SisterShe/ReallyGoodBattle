///Input_Scipt(device)

// Detects player inputs and creates instance variables based on if keys are pressed.

//  device             = Which gamepad device "slot" to check.

//Converts arguments to locals.
device = (argument0);

//Loads keybinding variables from data.
var data = ds_list_find_value(global.keybindings, device);
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
    var one_key_keyboard = self.one_key_keyboard;
    var two_key_keyboard = self.two_key_keyboard;
    var three_key_keyboard = self.three_key_keyboard;
    var four_key_keyboard = self.four_key_keyboard;

    //Gamepad
    var left_key_gamepad = self.left_key_gamepad;
    var right_key_gamepad = self.right_key_gamepad;
    var up_key_gamepad = self.up_key_gamepad;
    var down_key_gamepad = self.down_key_gamepad;
    var jump_key1_gamepad = self.jump_key1_gamepad;
    var jump_key2_gamepad = self.jump_key2_gamepad;
    var attack_key1_gamepad = self.attack_key1_gamepad;
    var attack_key2_gamepad = self.attack_key2_gamepad;
    var one_key_gamepad = self.one_key_gamepad;
    var two_key_gamepad = self.two_key_gamepad;
    var three_key_gamepad = self.three_key_gamepad;
    var four_key_gamepad = self.four_key_gamepad;
    
    //Misc
    var fullscreen_key = self.fullscreen_key;
}

//Keyboard Inputs
left_key = keyboard_check(left_key_keyboard);
right_key = keyboard_check(right_key_keyboard);
up_key =  keyboard_check(up_key_keyboard);
down_key =  keyboard_check(down_key_keyboard);
jump_key = keyboard_check(jump_key1_keyboard) or keyboard_check(jump_key2_keyboard);
jump_key_pressed = keyboard_check_pressed(jump_key1_keyboard) or keyboard_check_pressed(jump_key2_keyboard);
jump_key_released = keyboard_check_released(jump_key1_keyboard) or keyboard_check_released(jump_key2_keyboard);
attack_key_held = keyboard_check(attack_key1_keyboard) or mouse_check_button(attack_key2_keyboard); 
attack_key_released = keyboard_check_released(attack_key1_keyboard)or mouse_check_button_released(attack_key2_keyboard);
attack_key_tap = keyboard_check_pressed(attack_key1_keyboard) or mouse_check_button_pressed(attack_key2_keyboard);
fullscreen_key = keyboard_check_pressed(fullscreen_key); 
one_key = keyboard_check_released(one_key_keyboard); 
two_key = keyboard_check_released(two_key_keyboard); 
three_key = keyboard_check_released(three_key_keyboard); 
four_key = keyboard_check_released(four_key_keyboard); 

//Funtimes
if (left_key or right_key or up_key or down_key or jump_key or jump_key_released or attack_key_held
or attack_key_released or attack_key_tap or fullscreen_key or one_key or two_key or three_key or four_key)
{
    exit;
}

//Gamepad Inputs.
if (gamepad_is_connected(device))
{    
    //Detects movement with sticks.
    var axisdir = point_direction(0,0,gamepad_axis_value(device,gp_axislh),gamepad_axis_value(device,gp_axislv));
    axisdir += 45;
    axisdir = axisdir%360;
    axisdir = floor(axisdir/90);    
    left_key = 0;
    right_key = 0;
    up_key=0;
    down_key=0;
    if (point_distance(0,0,gamepad_axis_value(device,gp_axislh),gamepad_axis_value(device,gp_axislv))>0.1)
    {
        switch(axisdir)
        {
            case 0:
                right_key = 1; 
                break;
            case 1:
                up_key = 1; 
                break;
            case 2:
                left_key = 1; 
                break;
            case 3:
                down_key = 1; 
                break;
        }
    }
    
    //Check if input not detected.
    if (left_key = 0) left_key = gamepad_button_check(device, left_key_gamepad);
    if (right_key = 0) right_key = gamepad_button_check(device, right_key_gamepad);
    if (up_key = 0) up_key =  gamepad_button_check(device, up_key_gamepad);
    if (down_key = 0) down_key =  gamepad_button_check(device, down_key_gamepad);
    
    //Detects button presses.
    left_key_pressed = (gamepad_axis_value(device,gp_axislh) < -0.95) or gamepad_button_check_pressed(device, left_key_gamepad); 
    right_key_pressed =  (gamepad_axis_value(device,gp_axislh) > 0.95) or gamepad_button_check_pressed(device, right_key_gamepad);
    H_neutral = (gamepad_axis_value(device,gp_axislh) = 0)
    up_key_pressed =   (gamepad_axis_value(device,gp_axislv) < -0.95) or gamepad_button_check_pressed(device, up_key_gamepad);
    down_key_pressed =  (gamepad_axis_value(device,gp_axislv) > 0.95) or gamepad_button_check_pressed(device, down_key_gamepad);
    V_neutral = (gamepad_axis_value(device,gp_axislv) = 0)
    jump_key = gamepad_button_check(device, jump_key1_gamepad) or (gamepad_button_check(device, jump_key2_gamepad));
    jump_key_pressed = gamepad_button_check_pressed(device, jump_key1_gamepad) or (gamepad_button_check_pressed(device, jump_key2_gamepad));
    jump_key_released = gamepad_button_check_released(device,jump_key1_gamepad) or (gamepad_button_check_released(device, jump_key2_gamepad));
    attack_key_held = (gamepad_button_check(device, attack_key2_gamepad)or gamepad_button_check_pressed(device, attack_key1_gamepad)); 
    attack_key_released = (gamepad_button_check_released(device, attack_key2_gamepad)or gamepad_button_check_pressed(device, attack_key1_gamepad)); 
    attack_key_tap = (gamepad_button_check_pressed(device, attack_key2_gamepad) or gamepad_button_check_pressed(device, attack_key1_gamepad)); 
    fullscreen_key = keyboard_check_pressed(fullscreen_key);
    one_key = gamepad_button_check_released(device, one_key_gamepad); 
    two_key = gamepad_button_check_released(device, two_key_gamepad); 
    three_key = gamepad_button_check_released(device, three_key_gamepad); 
    four_key = gamepad_button_check_released(device, four_key_gamepad); 
}
