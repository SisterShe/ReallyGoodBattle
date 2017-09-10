#define UAirAtk_state
///AirAtk_state
image_speed = .3;

if (image_angle = 0) {  
    if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr; 
    } 
     if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    } 
    if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    } 
    vspeed= vspeed+0.25; 
    image_yscale = 1; 
   if (charge >= 1) {
    image_speed = .15;
    //room_speed = 30;
    alarm[10] = room_speed / 2 ;
     Line = instance_create(x,y-6,LazerLine); 
     Line.creator = id;
     Line.image_xscale = abs(image_xscale*2); 
     Line.image_angle = image_angle+90;
   } else {image_speed = .25; room_speed = 60;} 
      if (image_index >= 2 and image_index <= 4) {
     if (charge >= 1) {
    Lazer = instance_create(x,y-6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90
   charge -= 1; 
} else {
    hurt = instance_create(x,y-6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90
}     
}
     
}

if (image_angle = 90) {
if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr;
        } 
    if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr;   
    } 
     if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr;   
    } 
     if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr;   
    } 
    image_xscale = 1; 
    hspeed= hspeed+0.25;
    if (charge >= 1) {
    image_speed = .15;
    //room_speed = 30; 
     alarm[10] = room_speed / 2 ;
    Line = instance_create(x,y-6,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle;
    } else {image_speed = .25; room_speed = 60;} 
    if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y-6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle;
    charge -= 1; 
} else { hurt = instance_create(x,y-6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle;
} 
}
 
}

if (image_angle = 180) {
     if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr; 
    } 
     if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    } 
     if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    } 
     if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    } 
    image_yscale = -1; 
     vspeed= vspeed-0.25; 
     if (charge >= 1) {
     image_speed = .15;
     //room_speed = 30; 
      alarm[10] = room_speed / 2 ;
      Line = instance_create(x,y-6,LazerLine); 
      Line.creator = id;
      Line.image_xscale = abs(image_xscale*2); 
      Line.image_angle = image_angle-90
     } else { image_speed = .25; room_speed = 60; }
     
     if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y-6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle-90
    charge -= 1; 
} else { 
hurt = instance_create(x,y-6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle-90
} 
}

}

if (image_angle = 270) {
if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr;
    } 
     if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    } 
     if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    } 
     if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    } 
    image_xscale = -1;  
     hspeed = hspeed-0.25;
     if (charge >= 1) {
      image_speed = .15;
      //room_speed = 30;
       alarm[10] = room_speed / 2 ;
      Line = instance_create(x,y-6,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle-180
     } else { image_speed = .25; room_speed = 60; }
     if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y-6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle-180
    charge -= 1;
} else { hurt = instance_create(x,y-6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle-180
} 
}
}


if (image_index >= 5) {
room_speed = 60;
    mState = airborne_state;
}
if (place_meeting(x,y+1,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = up_landing_state; 
        alarm[0] = 5; 
        
    }
    
if (place_meeting(x,y-1,CollisionUnit_obj) and canChange = 1) {
         canChange = 0;
         image_index = 0; 
         mState = down_landing_state; 
         alarm[0] = 5;  
    }

if (place_meeting(x-1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 5;
        image_index = 0; 
        mState = left_landing_state;  
        alarm[0] = 5; 
    }
    
if (place_meeting(x+1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = right_landing_state;  
        alarm[0] = 5;
    }
    


#define DAirAtk_state
///AirAtk_state
image_speed = .3;

if (image_angle = 0) {  
    if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr;
    }
     if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    } 
    if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    } 
    image_yscale = -1; 
    vspeed= vspeed+0.25;  
    if (charge >= 1) {
        image_speed = .15;
        //room_speed = 30; 
         alarm[10] = room_speed / 2 ;
        Line = instance_create(x,y+6,LazerLine); 
        Line.creator = id;
        Line.image_xscale = abs(image_xscale*2); 
        Line.image_angle = image_angle-90;
    } else {image_speed = .25; room_speed = 60;}
    if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y+6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle-90;
    charge -= 1; 
} else { 
    hurt = instance_create(x,y+6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle-90
}   
}  

}

if (image_angle = 90) {
if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr; 
       } 
     if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    }  
     if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    }  
     if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    }  
    image_xscale = -1
    hspeed= hspeed+0.25;
    if (charge >= 1) {
    image_speed = .15;
    //room_speed = 30; 
     alarm[10] = room_speed / 2 ;
    Line = instance_create(x,y+6,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle - 180;
    } else {image_speed = .25; room_speed = 60;} 
    if (image_index >= 2 and image_index <= 4) {
   if (charge >= 1) {
    Lazer = instance_create(x,y+6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle - 180
    charge -= 1; 
        } else {  
        hurt = instance_create(x,y+6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle - 180
} 
}

}

if (image_angle = 180) {
     if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr; 
    } 
     if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    } 
     if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    }
     if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    }
     vspeed= vspeed-0.25; 
     image_yscale = 1; 
      if (charge >= 1) {
      image_speed = .15; //room_speed = 30;  
      alarm[10] = room_speed / 2 ;
     Line = instance_create(x,y+6,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle+90 
      } else {image_speed = .25; room_speed = 60; } 
     if (image_index >= 2 and image_index <= 4) {
     if (charge >= 1) { 
    Lazer =  instance_create(x,y+6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90 
    charge -= 1; 
} else { 
    hurt = instance_create(x,y+6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90
} 
}
}

if (image_angle = 270) {
if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr;
          } 
           if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    } 
    if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    } 
          image_xscale = 1;
     hspeed= hspd-0.25;
     if (charge >= 1) {
      image_speed = .15;
      //room_speed = 30; 
       alarm[10] = room_speed / 2 ;
        Line = instance_create(x,y+6,LazerLine); 
        Line.creator = id;
        Line.image_xscale = abs(image_xscale*2); 
        Line.image_angle = image_angle;
     } else { image_speed = .25; room_speed = 60; } 
     if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y+6,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle
    charge -= 1; 
} else {
    hurt = instance_create(x,y+6,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle;
} 
}  
}


if (image_index >= 5) {
room_speed = 60;
    mState = airborne_state;
}
if (place_meeting(x,y+1,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = up_landing_state; 
        alarm[0] = 5; 
        
    }
    
if (place_meeting(x,y-1,CollisionUnit_obj) and canChange = 1) {
         canChange = 0;
         image_index = 0; 
         mState = down_landing_state; 
         alarm[0] = 5;  
    }

if (place_meeting(x-1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 5;
        image_index = 0; 
        mState = left_landing_state;  
        alarm[0] = 5; 
    }
    
if (place_meeting(x+1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = right_landing_state;  
        alarm[0] = 5;
    }
    


#define RAirAtk_state
///AirAtk_state
image_speed = .3;

if (image_angle = 0) {  
    if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr;
    }
     if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    } 
    if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    } 
    vspeed = vspeed+0.25;  
    image_xscale = 1; 
    image_yscale = 1; 
    if (charge >= 1) {
        image_speed = .15;
        //room_speed = 30;
         alarm[10] = room_speed / 2 ;
        Line = instance_create(x+6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle;
    } else {image_speed = .25; room_speed = 60;}
    if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x+6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle;
    charge -= 1; 
} else {hurt = instance_create(x+6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle;
} 
}  
    
}

if (image_angle = 90) {
if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr; 
        } 
     if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    }
    if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    }
    if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    }
    image_yscale = -1 
     image_xscale = 1; 
    hspeed= hspeed+0.25;
    
    if (charge >= 1) {
    image_speed = .15;
    //room_speed = 30;
     alarm[10] = room_speed / 2 ;
    Line = instance_create(x+6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle - 90;
    } else {image_speed = .25 room_speed = 60;} 
    
    if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x+6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle - 90
    charge -= 1; 
} else { 
    hurt = instance_create(x+6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle - 90
} 
}
}

if (image_angle = 180) {
     if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr; 
        }
      if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    }  
    if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    }  
    if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    }  
    image_xscale = -1;
     vspeed= vspeed-0.25; 
     image_yscale = 1; 
     if (charge >= 1) {
     image_speed = .15; 
     //room_speed = 30;  
     alarm[10] = room_speed;
     Line = instance_create(x+6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle-180;
     } else { image_speed = .25; room_speed = 60;}
     if (image_index >= 2 and image_index <= 4) {
        if (charge >= 1) {
    Lazer = instance_create(x+6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle-180;
    charge -= 1; 
    } else { 
    hurt = instance_create(x+6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle-180
} 
}
}

if (image_angle = 270) {
if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr;
        }
         if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    }  
     if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    }  
     if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    }  
    image_xscale = -1;
    image_yscale = 1; 
     hspeed= hspeed-0.25;
     if (charge >= 1) {
     image_speed = .15;
     //room_speed = 30;
      alarm[10] = room_speed / 2 ;
     Line = instance_create(x+6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle+90;
     } else {image_speed = .25; room_speed = 60;}
     if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x+6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90
    charge -= 1;  
} else {
    hurt = instance_create(x+6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90
} 
  
}
}
if (image_index >= 5) {
room_speed = 60;
    mState = airborne_state;
}
if (place_meeting(x,y+1,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = up_landing_state; 
        alarm[0] = 5; 
        
    }
    
if (place_meeting(x,y-1,CollisionUnit_obj) and canChange = 1) {
         canChange = 0;
         image_index = 0; 
         mState = down_landing_state; 
         alarm[0] = 5;  
    }

if (place_meeting(x-1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 5;
        image_index = 0; 
        mState = left_landing_state;  
        alarm[0] = 5; 
    }
    
if (place_meeting(x+1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = right_landing_state;  
        alarm[0] = 5;
    }
    


#define LAirAtk_state
///AirAtk_state
image_speed = .3;

if (image_angle = 0) {  
    if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr;
        }
     if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    } 
    if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    } 
    image_xscale = -1; 
    image_yscale = 1; 
    vspeed= vspeed+0.25;  
    if (charge >= 1) {
    image_speed = .15; 
    //room_speed = 30;
     alarm[10] = room_speed / 2 ;
    Line = instance_create(x-6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle + 180;
    } else {image_speed = .25; room_speed = 60;}
    if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x-6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle + 180 ;
    charge -= 1; 
}   else {hurt = instance_create(x-6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle + 180
}     
}
}

if (image_angle = 90) {
if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr; 
}
 if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    }  
 if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    }  
 if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    }  
    image_yscale = 1
     image_xscale = 1; 
    hspeed= hspeed+0.25;
     if (charge >= 1) {
     image_speed = .15;
     //room_speed =  30; 
      alarm[10] = room_speed / 2 ;
    Line = instance_create(x-6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle + 90 } else {image_speed = .25; room_speed = 60;}
    if (image_index >= 2 and image_index <= 4) {
     if (charge >= 1) {
    Lazer = instance_create(x-6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle + 90 
    charge -= 1; } else {
    hurt = instance_create(x-6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle + 90
} 
}
}

//testing
if (image_angle = 180) {  
    if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr;
        }
     if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    } 
    if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    } 
    image_yscale = -1; 
    image_xscale = 1; 
    vspeed= vspeed-0.25;  
    if (charge >= 1) {
    image_speed = .15; 
    //room_speed = 30;
     alarm[10] = room_speed / 2 ;
    Line = instance_create(x-6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle ;
    } else {image_speed = .25; room_speed = 60;}
    if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x-6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle  ;
    charge -= 1; 
}   else {hurt = instance_create(x-6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle 
}     
}
}
/*if (image_angle = 180) {
     if (PlayerNum = 1) {
        sprite_index = Player1_RAirAtk_spr; 
     }
      if (PlayerNum = 2) {
        sprite_index = Player2_RAirAtk_spr; 
    }  
     if (PlayerNum = 3) {
        sprite_index = Player3_RAirAtk_spr; 
    } 
     if (PlayerNum = 4) {
        sprite_index = Player4_RAirAtk_spr; 
    }  
    image_xscale = -1;
     vspeed= vspd-0.25; 
     image_yscale = 1; 
     }
    if (charge >= 1) {
    image_speed = .15;
    //room_speed = 30;
    Line = instance_create(x-6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle;
    
    } else {image_speed = .25; room_speed = 60;}
     if (image_index >= 2 and image_index <= 4) {
if (charge >= 1) {
    Lazer = instance_create(x-6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle
    charge -= 1; 
} else {   
    hurt = instance_create(x-6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle
} 
}
*/
if (image_angle = 270) {
if (PlayerNum = 1) {
        sprite_index = Player1_UAirAtk_spr;
        }
         if (PlayerNum = 2) {
        sprite_index = Player2_UAirAtk_spr; 
    }  
    if (PlayerNum = 3) {
        sprite_index = Player3_UAirAtk_spr; 
    }  
    if (PlayerNum = 4) {
        sprite_index = Player4_UAirAtk_spr; 
    }  
    image_yscale = -1;  
     image_xscale = 1;  
     hspeed= hspeed-0.25;
     if (charge >= 1) {
        image_speed = .15; 
        //room_speed = 30; 
         alarm[10] = room_speed / 2 ;
         Line = instance_create(x-6,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle-90;
        
     } else {image_speed = .25; room_speed = 60;}
     if (image_index >= 2 and image_index <= 4) {
        if (charge >= 1) {
    Lazer = instance_create(x-6,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle-90
    charge -= 1;
} else {
    hurt = instance_create(x-6,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle-90
} 
}
}


if (image_index >= 5) {
room_speed = 60;
    mState = airborne_state;
}
if (place_meeting(x,y+1,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = up_landing_state; 
        alarm[0] = 5; 
        
    }
    
if (place_meeting(x,y-1,CollisionUnit_obj) and canChange = 1) {
         canChange = 0;
         image_index = 0; 
         mState = down_landing_state; 
         alarm[0] = 5;  
    }

if (place_meeting(x-1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 5;
        image_index = 0; 
        mState = left_landing_state;  
        alarm[0] = 5; 
    }
    
if (place_meeting(x+1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        mState = right_landing_state;  
        alarm[0] = 5;
    }
    