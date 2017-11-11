///del_sfx_slider();

//Updates the global sfx volume.
global.sfxvolume = value;

//Saves to settings file.
ini_open("Settings");
ini_write_real("Settings", "SFXVolume", global.sfxvolume);
ini_close();
