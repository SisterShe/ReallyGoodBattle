///del_input_tab_update();

//Stores navigation systems as variables.
var nav1 = global.nav_system_scores;
var nav2 = global.nav_system_games;

//Check if enabled or disabled.
if (nav1.disabled)
{
    //Enable navigation system.
    event_user_ext(nav1, 4);
}
else
{
    //Disable navigation system.
    event_user_ext(nav1, 3);
}

//Check if enabled or disabled.
if (nav2.disabled)
{
    //Enable navigation system.
    event_user_ext(nav2, 4);
}
else
{
    //Disable navigation system.
    event_user_ext(nav2, 3);
}
