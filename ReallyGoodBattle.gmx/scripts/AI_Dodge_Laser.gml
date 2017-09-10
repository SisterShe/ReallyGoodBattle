///AI_Dodge_Laser

// Check to see if the AI needs to dodge a laser, and if so, executes a dodge
// input and returns true, else returns false.

// @Return: True if input, false if not.

//Check if target with laser is in a horizontal line.
with (player)
{
    var target = collision_rectangle(0, y-75, room_width, y+75, Player_Parent, false, true);
}
if (target != noone and target != player)
{     
    //Check if target have laser and ai can't laser.
    if (target.CanLazer and !player.CanLazer)
    {
        //Check that target is outside hitbox range.
        if (point_distance(player.x, player.y, target.x, target.y) > hitbox_radius)
        {
            //Check for AI movement state.
            switch (player.mState)
            {
                //Up State
                case up_mState:
                {
                    input = choose("Right", "Jump");
                    event_user(1);
                    return true;
                }
                break;
                
                //Down State
                case down_mState:
                {
                    input = choose("Right", "Jump");
                    event_user(1);
                    return true;
                }
                break;
                
                //Left State
                case left_mState:
                {
                    //Check if there is wall above.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y-75, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        input = choose("Down");
                        event_user(1);
                        return true;
                    }
                    else
                    {
                        input = choose("Up");
                        event_user(1);
                        return true;
                    }  
                }
                break;
                
                //Right State
                case right_mState:
                {
                    //Check if there is wall above.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y-75, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        input = choose("Down");
                        event_user(1);
                        return true;
                    }
                    else
                    {
                        input = choose("Up");
                        event_user(1);
                        return true;
                    }  
                }
                break;
                
                //Airborne State
                case airborne_state:
                {
                    input = choose("Jump");
                    event_user(1);
                    return true;
                }
                break;
            }
        }
    }
}

//Check if target with laser is in a vertical line.
with (player)
{
    var target = collision_rectangle(x-75, 0, x+75, room_height, Player_Parent, false, true);
}
if (target != noone and target != player)
{ 
    //Check if target have laser and ai can't laser.
    if (target.CanLazer and !player.CanLazer)
    {
        //Check that target is outside hitbox range.
        if (point_distance(player.x, player.y, target.x, target.y) > hitbox_radius)
        {
            //Check for AI movement state.
            switch (player.mState)
            {
                //Up State
                case up_mState:
                {
                    //Check if there is wall to the right.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x+75, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        input = choose("Left");
                        event_user(1);
                        return true;
                    }
                    else
                    {
                        input = choose("Right");
                        event_user(1);
                        return true;
                    }  
                }
                break;
                
                //Down State
                case down_mState:
                {
                    //Check if there is wall to the right.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x+75, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        input = choose("Left");
                        event_user(1);
                        return true;
                    }
                    else
                    {
                        input = choose("Right");
                        event_user(1);
                        return true;
                    }  
                }
                break;
                
                //Left State
                case left_mState:
                {
                    input = choose("Down", "Jump");
                    event_user(1);
                    return true; 
                }
                break;
                
                //Right State
                case right_mState:
                {
                    input = choose("Down", "Jump");
                    event_user(1);
                    return true;
                }
                break;
                
                //Airborne State
                case airborne_state:
                {
                    input = choose("Jump");
                    event_user(1);
                    return true;
                }
                break;
            }
        }
    }
}

//Returns false.
return false;
