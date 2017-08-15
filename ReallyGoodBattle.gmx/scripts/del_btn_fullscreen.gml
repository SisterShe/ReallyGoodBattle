///del_btn_options_back();

//Toogles fullscreen on/off.
global.fullscreen = boolean_opposite(global.fullscreen);
window_set_fullscreen(global.fullscreen);

//Saves to settings file.
ini_open("Settings");
ini_write_real("Settings", "Fullscreen", global.fullscreen);
ini_close();
