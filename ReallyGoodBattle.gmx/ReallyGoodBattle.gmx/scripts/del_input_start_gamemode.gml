///del_input_start_gamemode();

//Transitions to the game setup room.
room_goto(rm_levelselect);
//room_cfade(rm_levelselect, room_seconds(1), c_black);
audio_play_sound_volume(sfx_select_green, 10, false, global.sfxvolume);