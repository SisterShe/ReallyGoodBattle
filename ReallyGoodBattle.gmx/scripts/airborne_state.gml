///airborne_state
image_speed = .3;


if (PlayerNum = 1) {
        sprite_index = Player_Airborne_spr; 
    } 
    if (PlayerNum = 2) {
        sprite_index = Player2_Airborne_spr; 
    } 
     if (PlayerNum = 3) {
        sprite_index = Player3_Airborne_spr; 
    } 
    if (PlayerNum = 4) {
        sprite_index = Player4_Airborne_spr; 
    } 
 
 
if (image_angle = 0) {  
    vspeed = vspeed+0.25;  
    if (right_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += 4 ; 
    }
    if (left_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += -4 ; 
    }
    move = (right_key - left_key); 
if (move = 0) { //IF I am pushing Right or Left
     hspeed = hspeed/1.04; //friction (this makes me stop)
     } else 
    hspeed += move * 0.2 // this actually makes me movve
    if (hspeed >= 5) {hspeed = 4}  // this is a speed limit
    if (hspeed <= -5) {hspeed = -4;} // this is a speed limit
   
} else {
    

}


if (image_angle = 90) {
    hspeed = hspeed + 0.25;
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
if (move = 0) { 
   vspeed = vspeed/1.04; //friction (this makes me stop)
    } else {
       vspeed += move * 0.2 // this actually makes me movve
    if (vspeed >= 5) {vspeed = 4}  // this is a speed limit
    if (vspeed <= -5) {vspeed = -4;}  
    }
}
if (image_angle = 180) {
     vspeed = vspeed-0.25;  
    if (right_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += 4 ; 
    }
    if (left_key_pressed and canDash = true) {
    canDash = false; 
    hspeed += -4 ; 
    }
    move = (right_key - left_key); 
if (move = 0) { //IF I am pushing Right or Left
    hspeed = hspeed/1.04; //friction (this makes me stop)
} else {
    hspeed += move * 0.2 // this actually makes me movve
    if (hspeed >= 5) {hspeed = 4}  // this is a speed limit
    if (hspeed <= -5) {hspeed = -4;} // this is a speed limit

}
}

if (image_angle = 270) {
     hspeed = hspeed-0.25;
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
if (move = 0) { //IF I am pushing Right or Left
    vspeed = vspeed/1.04; //friction (this makes me stop)
    } else {
    vspeed += move * 0.2 // this actually makes me movve
    if (vspeed >= 5) {vspeed = 4;}  // this is a speed limit
    if (vspeed <= -5) {vspeed = -4;} // this is a speed limit
}
}

if (attack_key_tap and up_key) {
    audio_sound_pitch(AirWiff_snd, random_range(1.5,2.5));
    var sound = audio_play_sound(AirWiff_snd, 2, false);
    audio_sound_gain(sound, global.sfxvolume, 0);
    image_index = 0; 
    mState = UAirAtk_state; 
}
if (attack_key_tap and down_key) {
    audio_sound_pitch(AirWiff_snd, random_range(1.5,2.5));
    var sound = audio_play_sound(AirWiff_snd, 2, false);
    audio_sound_gain(sound, global.sfxvolume, 0);
    image_index = 0; 
    mState = DAirAtk_state; 
}
if (attack_key_tap and right_key) {
    audio_sound_pitch(AirWiff_snd, random_range(1.5,2.5));
    var sound = audio_play_sound(AirWiff_snd, 2, false);
    audio_sound_gain(sound, global.sfxvolume, 0);
    image_index = 0;
    mState = RAirAtk_state;
}
if (attack_key_tap and left_key) {
    audio_sound_pitch(AirWiff_snd, random_range(1.5,2.5));
    var sound = audio_play_sound(AirWiff_snd, 2, false);
    audio_sound_gain(sound, global.sfxvolume, 0);
    image_index = 0; 
    mState = LAirAtk_state; 
}


if (place_meeting(x,y+1,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        alarm[0] = 5; 
        mState = up_landing_state; 
    }
    
if (place_meeting(x,y-1,CollisionUnit_obj) and canChange = 1) {
         canChange = 0;
         image_index = 0; 
         alarm[0] = 5;
         mState = down_landing_state;  
    }

if (place_meeting(x-1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        alarm[0] = 5;
        mState = left_landing_state; 
    }
    
if (place_meeting(x+1,y,CollisionUnit_obj) and canChange = 1) {
        canChange = 0;
        image_index = 0; 
        alarm[0] = 5;
        mState = right_landing_state;  
    }
    
    
instance_create(x,y,Player_Trail_obj); 

