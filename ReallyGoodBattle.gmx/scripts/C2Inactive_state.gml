#define C2Inactive_state
///C2Inactive_state 
Input_Script(1);
if (jump_key) {
    Spawn = instance_create(x,y,Player2_obj); 
    state = C2ReadyToPlay_state
}


#define C2ReadyToPlay_state
///C2ReadyToPlay_state
if (Spawn = true) {
    CharacterSpawn = instance_create(x,y,Player2_obj); 
    CharacterSpawn.creator = id; 
    Spawn = false; 
}