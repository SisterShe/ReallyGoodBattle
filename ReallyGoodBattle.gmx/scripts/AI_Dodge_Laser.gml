#define AI_Dodge_Laser
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
                    exit;
                }
                break;
                
                //Down State
                case down_mState:
                {
                    input = choose("Right", "Jump");
                    event_user(1);
                    exit;
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
                        exit;
                    }
                    else
                    {
                        input = choose("Up");
                        event_user(1);
                        exit;
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
                        exit;
                    }
                    else
                    {
                        input = choose("Up");
                        event_user(1);
                        exit;
                    }  
                }
                break;
                
                //Airborne State
                case airborne_state:
                {
                    input = choose("Jump");
                    event_user(1);
                    exit;
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
                        exit;
                    }
                    else
                    {
                        input = choose("Right");
                        event_user(1);
                        exit;
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
                        exit;
                    }
                    else
                    {
                        input = choose("Right");
                        event_user(1);
                        exit;
                    }  
                }
                break;
                
                //Left State
                case left_mState:
                {
                    input = choose("Down", "Jump");
                    event_user(1);
                    exit; 
                }
                break;
                
                //Right State
                case right_mState:
                {
                    input = choose("Down", "Jump");
                    event_user(1);
                    exit;
                }
                break;
                
                //Airborne State
                case airborne_state:
                {
                    input = choose("Jump");
                    event_user(1);
                    exit;
                }
                break;
            }
        }
    }
}

#define script167
/*

//Check if target with laser is in a horizontal line.
with (player)
{
    var target = collision_rectangle(0, y-16, room_width, y+16, Player_Parent, false, true);
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
                    //Check if there is wall above.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y-64, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 = noone)
                    {
                        input = choose("Jump");
                        event_user(1);
                        exit;
                    }
                    else
                    {
                        //Check if there is a wall to the right.
                        with (player)
                        {
                            var target2 = collision_line(x, y, x+64, y, StealthCollisionUnit_obj, false, true);
                        }
                        if (target2 = noone)
                        {
                            input = choose("Left");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            input = choose("Right");
                            event_user(1);
                            exit;
                        } 
                    }    
                }
                break;
                
                //Down State
                case down_mState:
                {
                    //Check if there is wall below.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y+64, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 = noone)
                    {
                        input = choose("Jump");
                        event_user(1);
                        exit;
                    }
                    else
                    {
                        //Check if there is a wall to the right.
                        with (player)
                        {
                            var target2 = collision_line(x, y, x+64, y, StealthCollisionUnit_obj, false, true);
                        }
                        if (target2 = noone)
                        {
                            input = choose("Left");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            input = choose("Right");
                            event_user(1);
                            exit;
                        } 
                    }    
                }
                break;
            }
        }
    }
}

//Check if target with laser is in a horizontal line.
with (player)
{
    var target = collision_rectangle(0, y-48, room_width, y+48, Player_Parent, false, true);
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
                //Left State
                case left_mState:
                {
                    //Check if there is wall above.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y-32, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Left");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Down");
                            event_user(1);
                            exit;
                        }   
                    }
                    else
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Left");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Up");
                            event_user(1);
                            exit;
                        }   
                    }  
                }
                break;
                
                //Right State
                case right_mState:
                {
                    //Check if there is wall above.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y-32, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Right");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Down");
                            event_user(1);
                            exit;
                        }   
                    }
                    else
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Right");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Up");
                            event_user(1);
                            exit;
                        }   
                    }  
                }
                break;
                  
                //Airborne State
                case airborne_state:
                {
                    //Check if there is wall above.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x, y-32, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        input = choose("Jump Down");
                        event_user(1);
                        exit;
                    }
                    else
                    {
                        input = choose("Jump Up");
                        event_user(1);
                        exit;
                    }  
                }
                break;
            }
        }
    }
}

//Check if target with laser is in a vertical line.
with (player)
{
    var target = collision_rectangle(x-16, 0, x+16, room_height, Player_Parent, false, true);
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
                //Left State
                case left_mState:
                {
                    //Check if there is wall to the right.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x+64, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 = noone)
                    {
                        input = choose("Jump");
                        event_user(1);
                        exit;
                    }
                    else
                    {
                        //Check if there is a wall below.
                        with (player)
                        {
                            var target2 = collision_line(x, y, x, y+64, StealthCollisionUnit_obj, false, true);
                        }
                        if (target2 = noone)
                        {
                            input = choose("Up");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            input = choose("Down");
                            event_user(1);
                            exit;
                        } 
                    }    
                }
                break;
                
                //Right State
                case right_mState:
                {
                    //Check if there is wall to the left.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x-64, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 = noone)
                    {
                        input = choose("Jump");
                        event_user(1);
                        exit;
                    }
                    else
                    {
                        //Check if there is a wall below.
                        with (player)
                        {
                            var target2 = collision_line(x, y, x, y+64, StealthCollisionUnit_obj, false, true);
                        }
                        if (target2 = noone)
                        {
                            input = choose("Up");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            input = choose("Down");
                            event_user(1);
                            exit;
                        } 
                    }  
                }
                break;
                
                //Airborne State
                case airborne_state:
                {
                    //Check if there is wall to the right.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x+32, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        input = choose("Jump Left");
                        event_user(1);
                        exit;
                    }
                    else
                    {
                        input = choose("Jump Right");
                        event_user(1);
                        exit;
                    }  
                }
                break;
            }
        }
    }
}

//Check if target with laser is in a vertical line.
with (player)
{
    var target = collision_rectangle(x-48, 0, x+48, room_height, Player_Parent, false, true);
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
                        var target2 = collision_line(x, y, x+32, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Down");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Left");
                            event_user(1);
                            exit;
                        }   
                    }
                    else
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Down");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Right");
                            event_user(1);
                            exit;
                        }   
                    }  
                }
                break;
                
                //Down State
                case down_mState:
                {
                    //Check if there is wall to the right.
                    with (player)
                    {
                        var target2 = collision_line(x, y, x+32, y, StealthCollisionUnit_obj, false, true);
                    }
                    if (target2 != noone and target2 != player)
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Up");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Left");
                            event_user(1);
                            exit;
                        }   
                    }
                    else
                    {
                        //Check if dodge reset have already been done.
                        if (!dodge_reset)
                        {
                            //Resets movement acceleration.
                            dodge_reset = true;
                            alarm[6] = dodge_reset_timer;
                            input = choose("Up");
                            event_user(1);
                            exit;
                        }
                        else
                        {
                            //Dodges opposite direction.
                            input = choose("Right");
                            event_user(1);
                            exit;
                        }   
                    }  
                }
                break;
            }
        }
    }
}

*/

