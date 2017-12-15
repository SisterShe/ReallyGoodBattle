///del_btn_keybind_toggle();

//Toggles from gamepad keybindings to keyboard keybindings.
if (global.toggle.text = "Keyboard")
{
    //Toogles to keyboard.
    widget_disable(global.view_gamepad);
    widget_enable(global.view_keyboard);
    widget_hide(global.view_gamepad);
    widget_show(global.view_keyboard);
    global.toggle.text = "Gamepad";
    global.binding_label.text = "Set Keybindings for Keyboard";
}
else if (global.toggle.text = "Gamepad")
{
    //Toogles to gamepad.
    widget_enable(global.view_gamepad);
    widget_disable(global.view_keyboard);
    widget_hide(global.view_keyboard);
    widget_show(global.view_gamepad);
    global.toggle.text = "Keyboard";
    global.binding_label.text = "Set Keybindings for Gamepad";
}
