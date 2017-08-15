#define C3Inactive_state
///C3Inactive_state 
Input_Script(2);
if (jump_key) {
    Spawn = instance_create(x,y,Player3_obj); 
    state = C3ReadyToPlay_state
}


#define C3ReadyToPlay_state
///C3ReadyToPlay_state
if (Spawn = true) {
    CharacterSpawn = instance_create(x,y,Player3_obj); 
    CharacterSpawn.creator = id; 
    Spawn = false; 
}