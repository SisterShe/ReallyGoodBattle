///del_music_slider();

//Updates the global music volume.
global.musicvolume = value;

//Updates music volume.
audio_sound_gain(global.music, global.musicvolume, 0);

//Saves to settings file.
ini_open("Settings");
ini_write_real("Settings", "MusicVolume", global.musicvolume);
ini_close();
