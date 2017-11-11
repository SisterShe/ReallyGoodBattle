///crouch_state

//Updates animation speed.
image_speed = 1;

//Determines player sprite.
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
    sprite_index = Player3_Airborne_spr; 
} 
if (PlayerNum = 4) 
{
    sprite_index = Player4_Airborne_spr; 
}
 


if (image_angle = 0) {  
   if (image_index >= 3 and jump_key) //fullhop
   { 
        vspeed = -spd*1.75; 
        //audio_sound_pitch(Jump1_snd, random_range(.9,1.1));
        //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
         Hsmoke = instance_create(x,y+8,Player_HSmoke_obj); 
            Hsmoke.creator = id; 
            Hsmoke.image_angle = image_angle;
            Hsmoke.image_yscale = random_range(.75,1.5); 
        mState = airborne_state;
        audio_play_sound_volume(sfx_long_jump, 10, false, global.sfxvolume);
   }
   if (image_index >= 3 and !jump_key) //short hopping
   { 
        vspeed = -spd; 
        //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
         Lsmoke = instance_create(x,y+8,Player_LSmoke_obj); 
            Lsmoke.creator = id; 
            Lsmoke.image_angle = image_angle;
            Lsmoke.image_yscale = random_range(.75,1.5); 
        mState = airborne_state;
        audio_play_sound_volume(sfx_short_jump, 10, false, global.sfxvolume);
   }
}


if (image_angle = 90) 
{
    if (image_index >= 3 and jump_key) 
    { 
        hspeed = -spd*1.75; 
        //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
        Hsmoke = instance_create(x+8,y,Player_HSmoke_obj); 
            Hsmoke.creator = id; 
            Hsmoke.image_angle = image_angle;
            Hsmoke.image_yscale = random_range(.75,1.5); 
        mState = airborne_state;
        audio_play_sound_volume(sfx_long_jump, 10, false, global.sfxvolume);
    }
    if (image_index >= 3 and !jump_key) 
    { 
        hspeed = -spd; 
        //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
         Lsmoke = instance_create(x+8,y,Player_LSmoke_obj); 
            Lsmoke.creator = id; 
            Lsmoke.image_angle = image_angle;
            Lsmoke.image_yscale = random_range(.75,1.5); 
        mState = airborne_state;
        audio_play_sound_volume(sfx_short_jump, 10, false, global.sfxvolume);
    }
}



if (image_angle = 180) 
{
   if (image_index >= 3 and jump_key) 
   { 
       vspeed = spd*1.75; 
       //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
        Hsmoke = instance_create(x,y-8,Player_HSmoke_obj); 
            Hsmoke.creator = id; 
            Hsmoke.image_angle = image_angle;
            Hsmoke.image_yscale = random_range(.75,1.5); 
       mState = airborne_state;
       audio_play_sound_volume(sfx_long_jump, 10, false, global.sfxvolume);
   }
   if (image_index >= 3 and !jump_key) 
   { 
       vspeed = spd; 
       //var sound = audio_play_sound(Jump1_snd,1,false); 
       //audio_sound_gain(sound, global.sfxvolume, 0);
        Lsmoke = instance_create(x,y-8,Player_LSmoke_obj); 
            Lsmoke.creator = id; 
            Lsmoke.image_angle = image_angle;
            Lsmoke.image_yscale = random_range(.75,1.5); 
       mState = airborne_state;
       audio_play_sound_volume(sfx_short_jump, 10, false, global.sfxvolume);
   }
}



if (image_angle = 270) 
{
    if (image_index >= 3 and jump_key) 
    { 
        hspeed = spd*1.75;  
        //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
        Hsmoke = instance_create(x-8,y,Player_HSmoke_obj); 
            Hsmoke.creator = id; 
            Hsmoke.image_angle = image_angle;
            Hsmoke.image_yscale = random_range(.75,1.5); 
            audio_play_sound_volume(sfx_long_jump, 10, false, global.sfxvolume);
            
        mState = airborne_state;
    }
    if (image_index >= 3 and !jump_key) 
    { 
        hspeed = spd; 
        //var sound = audio_play_sound(Jump1_snd,1,false); 
        //audio_sound_gain(sound, global.sfxvolume, 0);
         Lsmoke = instance_create(x-8,y,Player_LSmoke_obj); 
            Lsmoke.creator = id; 
            Lsmoke.image_angle = image_angle;
            Lsmoke.image_yscale = random_range(.75,1.5); 
            audio_play_sound_volume(sfx_short_jump, 10, false, global.sfxvolume);
        mState = airborne_state;
    }
}
