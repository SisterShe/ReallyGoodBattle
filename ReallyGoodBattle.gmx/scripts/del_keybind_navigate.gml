///del_btn_keybind_navigate();

//Stores navigation systems as variables.
var nav_default = global.nav_system_default;
var nav_gamepad = global.nav_system_gamepad;
var nav_keyboard = global.nav_system_keyboard;

//Toggles from gamepad keybindings to keyboard keybindings.
if (global.toggle.text = "Keyboard")
{    
    //Check if enabled or disabled.
    if (nav_gamepad.disabled)
    {
        //Enable navigation system.
        event_user_ext(nav_gamepad, 4);
    }
    else
    {
        //Disable navigation system.
        event_user_ext(nav_gamepad, 3);
    }
}
else if (global.toggle.text = "Gamepad")
{
    //Check if enabled or disabled.
    if (nav_keyboard.disabled)
    {
        //Enable navigation system.
        event_user_ext(nav_keyboard, 4);
    }
    else
    {
        //Disable navigation system.
        event_user_ext(nav_keyboard, 3);
    }
}

//Check if enabled or disabled.
if (nav_default.disabled)
{
    //Enable navigation system.
    event_user_ext(nav_default, 4);
}
else
{
    //Disable navigation system.
    event_user_ext(nav_default, 3);
}
