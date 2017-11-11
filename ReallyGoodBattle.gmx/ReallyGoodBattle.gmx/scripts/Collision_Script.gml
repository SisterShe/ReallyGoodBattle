///Collision_Script

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
