#define up_mState
///up_mState
image_yscale = 1; 
image_speed = .25;
move = (right_key - left_key);
//if move=0 move = (down_key - up_key);
//if (!place_meeting(x+hspeed,y,CollisionUnit_obj)) {
if (right_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += 2 ; 
    
}
if (left_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += -2 ; 
}
if (H_neutral) {
    canDash = true; 
}
if (move != 0) { //IF I am pushing Right or Left
    hspeed += move * 0.25 // this actually makes me movve
    if (hspeed >= 4.5) {hspeed = 4.5; trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index; trail.sprite_index = sprite_index;}  // this is a speed limit
    if (hspeed <= -4.5) {hspeed = -4.5;trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;} // this is a speed limit
    //animation
    sprite_index = spr_move;
    image_xscale = move;
} else {
    hspeed = hspeed/1.2; //friction (this makes me stop)
    //animation
    sprite_index = spr_idle;
    image_speed = .15;
}
/*} else { removed for reasons 
    hspeed = hspd/1.5; 
    sprite_index = spr_idle;
    image_speed = .15;
} */
image_angle = 0;  

if (place_meeting(x, y+1, CollisionUnit_obj)) { //if Im going to touch the ground
vspeed = 0; //this is redundant    
canJump = 1;  //give me more jumps
} else {mState = airborne_state;} //if I am not on the ground I should be in the airbore state, this does that. 

if (place_meeting(x, y-1, CollisionUnit_obj)) { //if Im suck upside down
mState = airborne_state; //if I am not on the ground I should be in the airbore state, this does that.
} 


if (jump_key and canJump = 1) { //if I have a jump, go ahead and do the jump
    canJump = 0;  //lose the jump
    image_index = 0; //prepare for new animation
    mState = crouch_state //go into the prejump state. 
} 

if (attack_key_tap) { //if I push the attack button. 
    
    image_index = 0; //prerare for animation changes
    hspeed = image_xscale * spd/2; //this is the punch sliding. 
    fade = instance_create(x,y,Player_FistFade_obj);  // this is the effect that the punching leaves
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = upN_attack; // move into the punch state. (do the attack)
     
}
if (attack_key_tap and up_key) { // pushing attack while pushing up 
    image_index = 0;   //prepare for animation changes
    fade = instance_create(x,y,Player_FistFade_obj); // this is the effect that the punching leaves
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = upU_attack; //do the attack
}

if (move != 0) { // if I am moving
    if  (image_index >= 2.9 and image_index <= 3.1 ) { // and the my foot is touching the floor
     audio_sound_pitch(Walk1_snd, random_range(.9,1.1));
    var sound = audio_play_sound(Walk1_snd,1,false); //play the footset sound
    audio_sound_gain(sound, global.sfxvolume, 0); //play the footset sound
    }
    if (image_index >= 6.9 and image_index <= 7.1) {
     audio_sound_pitch(Walk1_snd, random_range(.9,1.1));
    var sound = audio_play_sound(Walk1_snd,1,false);  //play the footset sound
    audio_sound_gain(sound, global.sfxvolume, 0); //play the footset sound
    }
}


//crouching 
if (PlayerNum = 1 and down_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 2 and down_key) {
sprite_index = Player2_crouch_spr;
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 3 and down_key) {
sprite_index = Player3_crouch_spr;
hspeed = 0; 
vspeed = 0; 

}
if (PlayerNum = 4 and down_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}

#define left_mState
///Left
image_speed = .25;
image_yscale = 1;
move = (down_key - up_key);  
if (down_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += 2; 
    
}
if (up_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += -2 ; 
}
if (V_neutral) {
    canDash = true; 
}
if (move != 0) { //IF I am pushing Right or Left
    vspeed += move * 0.25 // this actually makes me movve
    if (vspeed >= 4.5) {vspeed = 4.5; trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;}  // this is a speed limit
    if (vspeed <= -4.5) {vspeed = -4.5;trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;} // this is a speed limit
    //animation
    sprite_index = spr_move;
    image_xscale = move;
} else {
    vspeed = vspeed/1.2; //friction (this makes me stop)
    //animation
    sprite_index = spr_idle;
    image_speed = .15;
}
image_angle = 270;

/*
    if (place_meeting(x, y-1, CollisionUnit_obj) and canChange = 1) {
        mState = down_mState;
        canChange = 0;
        alarm[0] = room_speed/2;
    }

    if (place_meeting(x, y+1, CollisionUnit_obj) and canChange = 1) {
        mState = up_mState; 
        canChange = 0;
        alarm[0] = room_speed/2;
}
*/
if (place_meeting(x+1, y, CollisionUnit_obj)and canChange = 1) {
        mState = right_mState; 
        canChange = 0;
        alarm[0] = room_speed/2; 
}

if (place_meeting(x-1, y, CollisionUnit_obj)) {
hspeed= 0;   
canJump = 1;     
} else {mState = airborne_state}


if (jump_key and canJump = 1) {
     canJump = 0;  
     image_index = 0; 
    mState = crouch_state
    
}

if (attack_key_tap) {

    vspeed= image_xscale * spd/2;
    image_index = 0; 
    fade = instance_create(x,y,Player_FistFade_obj); 
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = leftN_attack; 
    
}
if (attack_key_tap and right_key) {

    image_index = 0;
    fade = instance_create(x,y,Player_FistFade_obj); 
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = leftU_attack; 
}

if (move = 1 or move = -1) {
    if  (image_index >= 2.9 and image_index <= 3.1 ) {
    var sound = audio_play_sound(Walk1_snd,1,false); 
    audio_sound_gain(sound, global.sfxvolume, 0);
    }
    if (image_index >= 6.9 and image_index <= 7.1) {
    var sound = audio_play_sound(Walk1_snd,1,false); 
    audio_sound_gain(sound, global.sfxvolume, 0);
    }
}

//crouching 
if (PlayerNum = 1 and left_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 2 and left_key) {
sprite_index = Player2_crouch_spr;
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 3 and left_key) {
sprite_index = Player3_crouch_spr;
hspeed = 0; 
vspeed = 0; 

}
if (PlayerNum = 4 and left_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}

#define down_mState
///down_mState
image_speed = .25;
image_yscale = 1;
move = (right_key - left_key);  
if (right_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += 2 ; 
    
}
if (left_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += -2 ; 
}
if (H_neutral) {
    canDash = true; 
}

if (move != 0) { //IF I am pushing Right or Left
    hspeed += move * 0.25 // this actually makes me movve
    if (hspeed >= 4.5) {hspeed = 4.5; trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;}  // this is a speed limit
    if (hspeed <= -4.5) {hspeed = -4.5; trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;} // this is a speed limit
    //animation
    sprite_index = spr_move;
    image_xscale = -move;
} else {
    hspeed = hspeed/1.2; //friction (this makes me stop)
    //animation
    sprite_index = spr_idle;
    image_speed = .15;
}
image_angle = 180; 
/*
    if (place_meeting(x-1, y, CollisionUnit_obj) and canChange = 1) {
        mState = left_mState; 
        canChange = 0;
        alarm[0] = room_speed/2;
    }

    if (place_meeting(x+1, y, CollisionUnit_obj)and canChange = 1) {
        mState = right_mState; 
        canChange = 0;
        alarm[0] = room_speed/2;
    }
*/
    if (place_meeting(x, y+1, CollisionUnit_obj)and canChange = 1) {
        mState = up_mState; 
        canChange = 0;
        alarm[0] = room_speed/1.5; 
}

if (place_meeting(x, y-1, CollisionUnit_obj)) {
vspeed= 0; 
canJump = 1;       
} else {mState = airborne_state}
if (jump_key and canJump = 1) {
     canJump = 0;  
     image_index = 0; 
    mState = crouch_state
    
}

if (attack_key_tap) {

    hspeed= -image_xscale * spd/2;
    image_index = 0;
    fade = instance_create(x,y,Player_FistFade_obj); 
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = downN_attack; 
    
}
if (attack_key_tap and down_key) {

    image_index = 0;
    fade = instance_create(x,y,Player_FistFade_obj); 
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = downU_attack; 
}

if (move = 1 or move = -1) {
    if  (image_index >= 2.9 and image_index <= 3.1) {
    var sound = audio_play_sound(Walk1_snd,1,false); 
    audio_sound_gain(sound, global.sfxvolume, 0);
    }
    if (image_index >= 6.9 and image_index <= 7.1) {
    var sound = audio_play_sound(Walk1_snd,1,false); 
    audio_sound_gain(sound, global.sfxvolume, 0);
    }
}

//crouching 
if (PlayerNum = 1 and up_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 2 and up_key) {
sprite_index = Player2_crouch_spr;
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 3 and up_key) {
sprite_index = Player3_crouch_spr;
hspeed = 0; 
vspeed = 0; 

}
if (PlayerNum = 4 and up_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}

#define right_mState
///right_mState
image_speed = .25;
image_yscale = 1;
move = (down_key - up_key);  
if (down_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += 2 ; 
    
}
if (up_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += -2 ; 
}
if (V_neutral) {
    canDash = true; 
}
if (move != 0) { //IF I am pushing Right or Left
    vspeed += move * 0.25 // this actually makes me movve
    if (vspeed >= 4.5) {vspeed = 4.5; trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;}  // this is a speed limit
    if (vspeed <= -4.5) {vspeed = -4.5; trail = instance_create(x,y,PlayerG_Trail_obj);trail.image_angle = image_angle;trail.image_xscale= image_xscale;trail.image_index = image_index;trail.sprite_index = sprite_index;} // this is a speed limit
    //animation
    sprite_index = spr_move;
    image_xscale = -move;
} else {
    vspeed = vspeed/1.2; //friction (this makes me stop)
    //animation
    sprite_index = spr_idle;
    image_speed = .15;
}
image_angle = 90; 
/*
    if (place_meeting(x, y-1, CollisionUnit_obj) and canChange = 1) {
        mState = down_mState; 
        canChange = 0
        alarm[0] = room_speed/2;
    }

    if (place_meeting(x, y+1, CollisionUnit_obj)and canChange = 1) {
        mState = up_mState; 
        canChange = 0;
        alarm[0] = room_speed/2;
    } 
*/   
if (place_meeting(x-1, y, CollisionUnit_obj)) {
        alarm[0] = room_speed/1.5; 
}

if (place_meeting(x+1, y, CollisionUnit_obj)) {
hspeed= 0;      
canJump = 1; 
} else {mState = airborne_state}

if (jump_key and canJump = 1) {
   canJump = 0;  
   image_index = 0; 
    mState = crouch_state
}
if (attack_key_tap) {

    vspeed= -image_xscale * spd/2;
    image_index = 0;
    fade = instance_create(x,y,Player_FistFade_obj); 
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = rightN_attack; 
}
if (attack_key_tap and left_key) {

    image_index = 0;
    fade = instance_create(x,y,Player_FistFade_obj); 
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = rightU_attack; 
}

if (move = 1 or move = -1) {
    if  (image_index >= 2.9 and image_index <= 3.1) {
    var sound = audio_play_sound(Walk1_snd,1,false); 
    audio_sound_gain(sound, global.sfxvolume, 0);
    }
    if (image_index >= 6.9 and image_index <= 7.1 ) {
    var sound = audio_play_sound(Walk1_snd,1,false); 
    audio_sound_gain(sound, global.sfxvolume, 0);
    }
}


//crouching 
if (PlayerNum = 1 and right_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 2 and right_key) {
sprite_index = Player2_crouch_spr;
hspeed = 0; 
vspeed = 0; 
}
if (PlayerNum = 3 and right_key) {
sprite_index = Player3_crouch_spr;
hspeed = 0; 
vspeed = 0; 

}
if (PlayerNum = 4 and right_key) {
sprite_index = Player1_crouch_spr; 
hspeed = 0; 
vspeed = 0; 
}