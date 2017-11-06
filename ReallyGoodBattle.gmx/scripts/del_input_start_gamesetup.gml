///del_input_start_gamesetup();

//Transitions to the game setup room.
//room_goto(rm_gamesetup);
room_cfade(rm_gamesetup, room_seconds(1), c_black);
audio_play_sound_volume(sfx_menu_confirm, 10, false, global.sfxvolume);
