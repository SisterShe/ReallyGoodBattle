///del_fighter_menu_model();

//Updates model of fighter.
with (obj_fighter_container.selected)
{
    model += 1;
    if (model > 3)
    {
        model = 1;
    }
}
