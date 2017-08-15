///Collision_Script

/*horizontal Collision
if (place_meeting(x+hspd, y, CollisionUnit_obj)) {
    while (!place_meeting(x+sign(hspd),y, CollisionUnit_obj))  {
        x += sign(hspd); 
    }
    hspd = 0;
}

//set hspd
x += hspd; 

//vertical Collision 
if (place_meeting(x, y+vspd, CollisionUnit_obj)) {
    while (!place_meeting(x, y+sign(vspd), CollisionUnit_obj))  {
        y += sign(vspd);
    }
    vspd = 0; 
}


//set vspd 
y += vspd; 
*/  

//horizontal collision 
if (place_meeting(x+hspeed,y,CollisionUnit_obj)) {
    while (!place_meeting(x+sign(hspeed),y, CollisionUnit_obj))  {
        x += sign(hspeed); 
    }
    hspeed = 0;
}

//Vertical collision 
if (place_meeting(x,y+vspeed,CollisionUnit_obj)) {
    while (!place_meeting(x, y+sign(vspeed), CollisionUnit_obj))  {
        y += sign(vspeed);
    }
    vspeed = 0;
    
}
