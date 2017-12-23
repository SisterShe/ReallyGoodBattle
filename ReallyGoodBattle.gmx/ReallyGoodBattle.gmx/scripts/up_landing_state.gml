#define up_landing_state
///up_landing_state();

// Handles the up landing state.

//Determine Player Sprite
if (PlayerNum = 1) 
{
    sprite_index = Player_Landing_spr; 
} 
if (PlayerNum = 2) 
{
    sprite_index = Player2_Landing_spr; 
} 
if (PlayerNum = 3) 
{
    sprite_index = Player3_Landing_spr; 
} 
if (PlayerNum = 4) 
{
    sprite_index = Player4_Landing_spr; 
} 
//Updates image variables.
image_speed = .55;
image_angle = 0; 
//image_xscale = 1; 
image_yscale = 1; 


if (right_key_pressed and canDash = true) 
{
    canDash = false; 
    hspeed += 3 ; 
}
if (left_key_pressed and canDash = true) 
{
    canDash = false; 
    hspeed += -3 ; 
}
if (H_neutral) 
{
    canDash = true; 
}
if (move != 0) 
{ //IF I am pushing Right or Left
   // hspeed += move * 0.2 // this actually makes me movve
       
} 
else 
{
    hspeed = hspeed/1.7; //friction (this makes me stop) 
}

if (hspeed >= 5) 
{
    hspeed = 4; // this is a speed limit
}  

if (hspeed <= -5)
{
    hspeed = -4; // this is a speed limi
} 


//if Im going to touch the ground
if (place_meeting(x, y+1, CollisionUnit_obj)) 
{ 
    vspeed = 0; //this is redundant    
    canJump = 1;  //give me more jumps
} 
else 
{
    //if I am not on the ground I should be in the airbore state, this does that. 
    mState = airborne_state;
} 


if (attack_key_tap) { //if I push the attack button. 
    
    image_index = 0; //prerare for animation changes
    hspeed = image_xscale * spd/2; //this is the punch sliding. 
    fade = instance_create(x,y,Player_FistFade_obj);  // this is the effect that the punching leaves
    fade.image_angle = image_angle+90; 
    fade.image_xscale = abs(image_xscale*2); 
    mState = upN_attack; // move into the punch state. (do the attack)
     
}
if (jump_key and canJump = 1) 
{ 
    //if I have a jump, go ahead and do the jump
    canJump = 0;  //lose the jump
    image_index = 0; //prepare for new animation
    mState = crouch_state //go into the prejump state.
    //audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume); 
} 

Impact = (instance_create(x,y+8,Player_Llanding_obj));
Impact.image_angle = image_angle; 
Impact.image_xscale = (random_range(.75,1.5)); 
if (image_index >= 7) 
{
    mState = up_mState; 
   // audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
} 

if (!place_meeting(x,y+1,CollisionUnit_obj)) 
{
    mState = airborne_state; 
}
if (place_meeting(x, y-1, CollisionUnit_obj)) 
{ 
    //if Im suck upside down
    mState = airborne_state; //if I am not on the ground I should be in the airbore state, this does that.
} 


#define left_landing_state
if (PlayerNum = 1) {
        sprite_index = Player_Landing_spr; 
    } 
if (PlayerNum = 2) {
        sprite_index = Player2_Landing_spr; 
    } 
if (PlayerNum = 3) {
        sprite_index = Player3_Landing_spr; 
    } 
if (PlayerNum = 4) {
        sprite_index = Player4_Landing_spr; 
    } 
image_speed = .55
image_angle = 270; 
image_xscale = 1; 
//image_yscale = 1; 
if (down_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += 3 ; 
    
}
if (up_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += -3 ; 
}
if (V_neutral) {
    canDash = true; 
}
if (move != 0) { //IF I am pushing Right or Left
    //vspeed += move * 0.2 // this actually makes me movve
   
    
} else {
    vspeed = vspeed/1.7; //friction (this makes me stop)
   
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

if (place_meeting(x-1,y,CollisionUnit_obj)) {
    hspeed = 0; 
    canJump = 1; 
} else {
    mState = airborne_state; 
}
 if (vspeed >= 5) {vspeed = 4}  // this is a speed limit
    if (vspeed <= -5) {vspeed = -4;} // this is a speed limi
Impact = (instance_create(x-8,y,Player_Llanding_obj));
Impact.image_angle = image_angle; 
Impact.image_xscale = (random_range(.75,1.5)); 

hspeed= 0;
if (jump_key and canJump = 1) { //if I have a jump, go ahead and do the jump
    canJump = 0;  //lose the jump
    image_index = 0; //prepare for new animation
    mState = crouch_state //go into the prejump state. 
   // audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
}
if (image_index >= 6) {
 mState = left_mState; 
 //audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
} 



#define down_landing_state

if (PlayerNum = 1) {
        sprite_index = Player_Landing_spr; 
    } 
if (PlayerNum = 2) {
        sprite_index = Player2_Landing_spr; 
    } 
if (PlayerNum = 3) {
        sprite_index = Player3_Landing_spr; 
    } 
if (PlayerNum = 4) {
        sprite_index = Player4_Landing_spr; 
    } 
image_speed = .55
image_angle = 180; 
//image_xscale = 1; 
image_yscale = 1; 
if (right_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += 3 ; 
    
}
if (left_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += -3 ; 
}
if (H_neutral) {
    canDash = true; 
}
if (move != 0) { //IF I am pushing Right or Left
    //hspeed += move * 0.2 // this actually makes me movve
   
    
} else {
    hspeed = hspeed/1.7; //friction (this makes me stop)
   
}
 if (hspeed >= 5) {hspeed = 4}  // this is a speed limit
    if (hspeed <= -5) {hspeed = -4;} // this is a speed limi
if (place_meeting(x, y-1, CollisionUnit_obj)) { //if Im going to touch the ground
vspeed = 0; //this is redundant    
canJump = 1;  //give me more jumps
} else {mState = airborne_state;} //if I am not on the ground I should be in the airbore state, this does that. 
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
if (jump_key and canJump = 1) { //if I have a jump, go ahead and do the jump
    canJump = 0;  //lose the jump
    image_index = 0; //prepare for new animation
    mState = crouch_state //go into the prejump state. 
   // audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
}  

Impact = (instance_create(x,y-8,Player_Llanding_obj));
Impact.image_angle = image_angle; 
Impact.image_xscale = (random_range(.75,1.5)); 

if (image_index >= 6) {
 mState = down_mState; 
 //audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
} 

if (!place_meeting(x,y-1,CollisionUnit_obj)) {
    mState = airborne_state; 
}

#define right_landing_state
if (PlayerNum = 1) {
        sprite_index = Player_Landing_spr; 
    } 
if (PlayerNum = 2) {
        sprite_index = Player2_Landing_spr; 
    } 
if (PlayerNum = 3) {
        sprite_index = Player3_Landing_spr; 
    } 
if (PlayerNum = 4) {
        sprite_index = Player4_Landing_spr; 
    } 
image_speed = .55;  
image_angle = 90; 
image_xscale = 1; 
//image_yscale = 1; 
Impact = (instance_create(x+8,y,Player_Llanding_obj));
Impact.image_angle = image_angle; 
Impact.image_xscale = (random_range(.75,1.5)); 
if (down_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += 3 ; 
    
}
if (up_key_pressed and canDash = true) {
    canDash = false; 
    vspeed += -3 ; 
}
if (V_neutral) {
    canDash = true; 
}
if (move != 0) { //IF I am pushing Right or Left
    //vspeed += move * 0.2 // this actually makes me movve
   
    
} else {
    vspeed = vspeed/1.7; //friction (this makes me stop)
   
}if (attack_key_tap) {

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
if (place_meeting(x+1,y,CollisionUnit_obj)) {
    hspeed = 0; 
    canJump = 1; 
} else {
    mState = airborne_state; 
}
 if (vspeed >= 5) {vspeed = 4}  // this is a speed limit
    if (vspeed <= -5) {vspeed = -4;} // this is a speed limi
hspeed= 0;
if (jump_key and canJump = 1) { //if I have a jump, go ahead and do the jump
    canJump = 0;  //lose the jump
    image_index = 0; //prepare for new animation
    mState = crouch_state //go into the prejump state. 
    //audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
}
if (image_index >= 6) {
 mState = right_mState; 
// audio_play_sound_volume(sfx_land, 10, false, global.sfxvolume);
} 