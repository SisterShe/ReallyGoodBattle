///input_check_any(device, gamepad, mouse, keyboard);

// Checks if any input is given. Can be set if should detect gamepad, mouse or keyboard.
// If multiple inputs are detected, returns the first instance found.

// device           = Slot value for gamepad.
// gamepad          = Boolean if gamepad should be detected.
// mouse            = Boolean if mouse should be detected.
// keyboard         = Boolean if keyboard should be detected.

// @Return: Index of input detected, else false.

//Converts arguments to variables.
var device = argument0;
var gamepad = argument1;
var mouse = argument2;
var keyboard = argument3;

//Check for gamepad.
if (gamepad)
{
    //Loops through all gamepad inputs.
    for (var i = gp_face1; i < gp_padr; i++)
    {
        if (gamepad_button_check(0, i))
        {
            return i;
        }
    }
}

//Check for mouse.
if (mouse)
{
    //Check for any input.
    if (mouse_check_button(mb_any))
    {
        return mouse_lastbutton;
    }
}

//Check for keyboard.
if (keyboard)
{
    //Check for any input.
    if (keyboard_check(vk_anykey))
    {
        return keyboard_key;
    }
}

//Returns false.
return false;
