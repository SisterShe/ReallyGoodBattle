///del_music_slider();

//Updates the global music volume.
global.musicvolume = value;

//Saves to settings file.
ini_open("Settings");
ini_write_real("Settings", "MusicVolume", global.musicvolume);
ini_close();
