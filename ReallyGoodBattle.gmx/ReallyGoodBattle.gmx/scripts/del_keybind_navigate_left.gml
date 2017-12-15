///del_keybind_navigate_left();

//Stores navigation systems as variables.
var nav_default = global.nav_system_default;
var nav_gamepad = global.nav_system_gamepad;
var nav_keyboard = global.nav_system_keyboard;

//Check if not already at destination.
if (nav_gamepad.disabled and nav_keyboard.disabled)
{    
    //Check if keyboard or gamepad.
    if (global.toggle.text = "Keyboard")
    {
        //Update navigation systems.
        event_user_ext(nav_default, 3); //Disable
        event_user_ext(nav_gamepad, 4); //Enable
        event_user_ext(nav_keyboard, 3); //Disable
        
        //Updates selection based on selection of default.
        var selection = nav_default.position;
        widget_navigation_select_position(nav_gamepad, selection);
    }
    else if (global.toggle.text = "Gamepad")
    {
        //Update navigation systems.
        event_user_ext(nav_default, 3); //Disable
        event_user_ext(nav_gamepad, 3); //Disable
        event_user_ext(nav_keyboard, 4); //Enable
        
        //Updates selection based on selection of default.
        var selection = nav_default.position;
        widget_navigation_select_position(nav_keyboard, selection);
    }
    
    //Plays audio clip.
    audio_play_sound_volume(sfx_select_green, 10, false, global.sfxvolume);
}
else
{
    //Check if keyboard or gamepad.
    if (global.toggle.text = "Keyboard")
    {
        //Check if selection is the right 4 buttons.
        var selection = nav_gamepad.position;
        if (selection < 4)
        {
            selection = clamp(selection + 4, 0, 7);
            widget_navigation_select_position(nav_gamepad, selection);
            
            //Plays audio clip.
            audio_play_sound_volume(sfx_select_green, 10, false, global.sfxvolume);
        }
    }
    else if (global.toggle.text = "Gamepad")
    {
        //Check if selection is the right 4 buttons.
        var selection = nav_keyboard.position;
        if (selection < 4)
        {
            selection = clamp(selection + 4, 0, 7);
            widget_navigation_select_position(nav_keyboard, selection);
            
            //Plays audio clip.
            audio_play_sound_volume(sfx_select_green, 10, false, global.sfxvolume);
        }
    }
}
