///del_fighter_menu_model();

//Updates model of fighter.
with (obj_fighter_container.selected)
{
    model += 1;
    if (model > 4)
    {
        model = 1;
    }
}
