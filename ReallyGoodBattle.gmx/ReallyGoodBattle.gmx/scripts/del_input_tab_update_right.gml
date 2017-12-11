///del_input_tab_update_right();

//Stores navigation systems as variables.
var nav1 = global.nav_system_scores;
var nav2 = global.nav_system_games;

//Check if not already at destination.
if (nav2.disabled)
{
    //Update navigation systems.
    event_user_ext(nav2, 4);
    event_user_ext(nav1, 3);
    
    //Update selection.
    var selection = nav1.position;
    widget_navigation_select_position(nav2, selection);
    
    //Plays audio clip.
    audio_play_sound_volume(sfx_select_green, 10, false, global.sfxvolume);
}

