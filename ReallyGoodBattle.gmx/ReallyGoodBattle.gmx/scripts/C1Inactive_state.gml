#define C1Inactive_state
///C1Inactive_state 
Input_Script(0);

if (jump_key) { 
    SpawnWords = false; 
    state = C1ColorSelect_state
}
if (instance_exists(RGBController_obj)) {
instance_destroy();
} 

#define C1ColorSelect_state
Input_Script(0); 
sprite_index = Player_Idle_spr; 
image_blend = Color; 
if (jump_key) {
    isReady = true; 
    Spawn = true; 
    state = C1ReadyToPlay_state
}
if (attack_key_tap) {
    SpawnWords = true; 
    state = C1Inactive_state
}

#define C1ReadyToPlay_state
///C1ReadyToPlay_state
if (Spawn = true) {
    CharacterSpawn = instance_create(x,y,Player1_obj); 
    CharacterSpawn.creator = id; 
    Spawn = false; 
}

if (attack_key_tap) {
    Spawn.hp = 0; 
    state = C1ColorSelect_state
}

if (instance_exists(RGBController_obj)) {
instance_destroy();
} 