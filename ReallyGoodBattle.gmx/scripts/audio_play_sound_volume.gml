///audio_play_sound_volume(index, priority, loop, volume);

// Plays a sound at the given volume.

// index            = The index of the sound to play.
// priority         = Set the channel priority for the sound.
// loop             = Sets the sound to loop or not.
// volume           = Volume of the sound from 0 to 1.

// @Return: Index of sound played.

//Converts arguments to variables.
var index = argument0;
var priority = argument1;
var loop = argument2;
var volume = argument3;

//Plays audio at volume.
var snd = audio_play_sound(index, priority, loop);
audio_sound_gain(snd, volume, 0);

