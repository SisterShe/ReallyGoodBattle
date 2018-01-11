///Collision_Script

//Check if stuck
if (place_meeting(x, y, CollisionUnit_obj))
{
    //Enters a loop until free.
    var i = false;
    while (true)
    {
        //Check if free to the left.
        if (!place_meeting(x-i, y, CollisionUnit_obj)) 
        {
            x -= i;
            break;
        }
        
        //Check if free to the right.
        if (!place_meeting(x+i, y, CollisionUnit_obj)) 
        {
            x += i;
            break;
        }
        
        //Check if free to the top.
        if (!place_meeting(x, y-i, CollisionUnit_obj)) 
        {
            y -= i;
            break;
        }
        
        //Check if free to the bottom.
        if (!place_meeting(x, y+i, CollisionUnit_obj)) 
        {
            y += i;
            break;
        }
        
        //Incremnt loop.
        i++;
    }
        
    /*
    //Check for horizontal speed.
    switch (image_angle)
    {
        //Floor
        case 0:
        y -= 1;
        break;
        
        //Right Wall
        case 90:
        x += 1;
        break;
        
        //Ceiling
        case 180:
        y += 1;
        break;
        
        //Left Wall
        case 270:
        x -= 1;
        break;
    }
    */
}

//horizontal collision 
if (place_meeting(x+hspeed,y,CollisionUnit_obj)) 
{        
    while (!place_meeting(x+sign(hspeed),y, CollisionUnit_obj))  
    {
        x += sign(hspeed); 
    }
    hspeed = 0; 
}

//Vertical collision 
if (place_meeting(x,y+vspeed,CollisionUnit_obj)) 
{
    while (!place_meeting(x, y+sign(vspeed), CollisionUnit_obj))  
    {
        y += sign(vspeed);
    } 
    
    vspeed = 0;
}
