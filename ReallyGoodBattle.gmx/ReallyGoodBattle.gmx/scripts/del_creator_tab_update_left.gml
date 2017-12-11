///del_creator_tab_update_left();

//Stores navigation systems as variables.
var nav1 = global.navsystem_1;
var nav2 = global.navsystem_2;

//Check if not already at destination.
if (nav1.disabled)
{
    //Update navigation systems.
    event_user_ext(nav1, 4);
    event_user_ext(nav2, 3);
    
    //Update selection.
    //var selection = nav2.position;
    //widget_navigation_select_position(nav1, selection);
    
    //Plays audio clip.
    audio_play_sound_volume(sfx_select_green, 10, false, global.sfxvolume);
}
