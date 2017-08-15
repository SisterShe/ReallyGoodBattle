#define upU_attack
///upU_attack
image_angle = 0; 
if (PlayerNum = 1) {
sprite_index = Player1_uAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_uAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_uAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_uAtk_spr; 
}
hspeed= 0; 
if (charge >= 1) {
image_speed = .15;
room_speed = 30;
Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle+90;
    
} else { image_speed = .25;room_speed = 60; } 
if (image_index >= 2 and image_index <= 4) {
if (charge >= 1) {

    Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90;
    charge -= 1; 

    }else{
    hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90;
}
}



if (image_index >= 5) {
room_speed = 60;
    mState = up_mState; 
}







#define leftU_attack
///leftU_attack
image_angle = 270; 
if (PlayerNum = 1) {
sprite_index = Player1_uAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_uAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_uAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_uAtk_spr; 
}
vspeed= 0;
if (charge >= 1) { 
    image_speed = .15;
    room_speed = 30;
    Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle+90;
} else { image_speed = 0.25; room_speed = 60;}
if (image_index >= 2 and image_index <= 4) {
  if (charge >= 1) {

    Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90;
    charge -= 1; 

} else {  hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90;
}
}

if (image_index >= 5) {
room_speed = 60;
    mState = left_mState; 
}




#define downU_attack
///downU_attack
image_angle = 180; 
if (PlayerNum = 1) {
sprite_index = Player1_uAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_uAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_uAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_uAtk_spr; 
}


hspeed= 0;
if ( charge >= 1 ) {
    Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle+90;
    image_speed = .15; room_speed = 30;
} else {image_seed = .25; room_speed = 60; }
if (image_index >= 2 and image_index <= 4) {
   if (charge >= 1) {
   Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90;
    charge -= 1; 
} else {  hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90;

}
}

if (image_index >= 5) {
room_speed = 60;
    mState = down_mState; 
}

#define rightU_attack
///rightU_attack
image_angle = 90; 
if (PlayerNum = 1) {
sprite_index = Player1_uAtk_spr; 
}
if (PlayerNum = 2) {
sprite_index = Player2_uAtk_spr; 
}
if (PlayerNum = 3) {
sprite_index = Player3_uAtk_spr; 
}
if (PlayerNum = 4) {
sprite_index = Player4_uAtk_spr; 
}
vspeed= 0;
if (charge >= 1) {
    Line = instance_create(x,y,LazerLine); 
    Line.creator = id;
    Line.image_xscale = abs(image_xscale*2); 
    Line.image_angle = image_angle+90;
    image_speed = .15; room_speed = 30;
} else { image_speed = .25; room_speed = 60; }
if (image_index >= 2 and image_index <= 4) {
    if (charge >= 1) {
    Lazer = instance_create(x,y,LazerBox); 
    Lazer.creator = id;
    Lazer.image_xscale = abs(image_xscale*2); 
    Lazer.image_angle = image_angle+90;
    charge -= 1; 
} else {
    hurt = instance_create(x,y,Hitbox_obj); 
    hurt.creator = id;
    hurt.image_xscale = abs(image_xscale*2); 
    hurt.image_angle = image_angle+90;
}
}

if (image_index >= 5) {
room_speed = 60;
    mState = right_mState; 
}