#define upN_attack
///upN_attack
image_angle = 0; 
if (PlayerNum = 1) {
sprite_index = Player1_nAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_nAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_nAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_nAtk_spr; 
}
hspd = hspd/1.2; 
if (charge >= 1) {
image_speed = .15;
//room_speed = 30;
Line = instance_create(x,y,LazerLine); 
    Line.creator = id;  
    Line.image_xscale = image_xscale*2; 
    Line.image_angle = image_angle;
} else { image_speed = .25;room_speed = 60; }
if (image_index >= 3 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;  
    Lazer.image_xscale = image_xscale
    Lazer.image_angle = image_angle;
    charge -= 1; 
    
    } else {
    hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = image_xscale*2; 
    hurt.image_angle = image_angle;
    }
}


if (image_index >= 6) {
    room_speed = 60;
    mState = up_mState; 
}


if (jump_key and canJump = 1) { //if I have a jump, go ahead and do the jump
    canJump = 0;  //lose the jump
    image_index = 0; //prepare for new animation
    mState = crouch_state //go into the prejump state. 
} 







#define leftN_attack
///left_attack
image_angle = 270;
if (PlayerNum = 1) {
sprite_index = Player1_nAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_nAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_nAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_nAtk_spr; 
}
vspd = vspd/1.2; 
if (charge >= 1) {
image_speed = .15;
//room_speed = 30;
Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = image_xscale*2; 
    Line.image_angle = image_angle;
} else { image_speed = .25; room_speed = 60; } 
if (image_index >= 3 and image_index <= 4) {
 if (charge >= 1 ) {
    Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = image_xscale*2; 
    Lazer.image_angle = image_angle;
    charge -= 1;  
} else {  
    hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = image_xscale*2; 
    hurt.image_angle = image_angle;
    
}
}
if (image_index >= 6) {
room_speed = 60;
    mState = left_mState; 
}

if (jump_key and canJump = 1) {
     canJump = 0;  
     image_index = 0; 
    mState = crouch_state
    
}


#define downN_attack
///down_attack
image_angle = 180; 
if (PlayerNum = 1) {
sprite_index = Player1_nAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_nAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_nAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_nAtk_spr; 
}
hspd = hspd/1.2; 
if (charge >= 1) {
image_speed = .15;
//room_speed = 30;
Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = image_xscale*2; 
    Line.image_angle = image_angle;
} else { image_speed = .25; room_speed = 60;}
if (image_index >= 3 and image_index <= 4) {
if (charge >= 1) {
    Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = image_xscale * 2; 
    Lazer.image_angle = image_angle;
    charge -= 1; 
}  else { 
     hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = image_xscale*2; 
    hurt.image_angle = image_angle;
}
}

if (image_index >= 6) {
room_speed = 60;
    mState = down_mState; 
}
if (jump_key and canJump = 1) {
     canJump = 0;  
     image_index = 0; 
    mState = crouch_state
    
}

#define rightN_attack
///right_attack
image_angle = 90; 
if (PlayerNum = 1) {
sprite_index = Player1_nAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_nAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_nAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_nAtk_spr; 
}
vspd = vspd/1.2; 
if (charge >= 1) {
    image_speed = .15;
    //room_speed = 30;
    Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = image_xscale*2; 
    Line.image_angle = image_angle;
} else { image_speed = .25; room_speed = 60; } 
if (image_index >= 3 and image_index <= 4) {
   if (charge >= 1) {
   Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = image_xscale*2; 
    Lazer.image_angle = image_angle;
    charge -= 1;
} else {
    hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = image_xscale*2; 
    hurt.image_angle = image_angle; 
}
}

if (image_index >= 6) {
room_speed = 60;
    mState = right_mState; 
}
if (jump_key and canJump = 1) {
   canJump = 0;  
   image_index = 0; 
    mState = crouch_state
}