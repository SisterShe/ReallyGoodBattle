#define C4Inactive_state
///C3Inactive_state 
Input_Script(3);
if (jump_key) {
    Spawn = instance_create(x,y,Player4_obj); 
    state = C4ReadyToPlay_state
}


#define C4ReadyToPlay_state
///C3ReadyToPlay_state
if (Spawn = true) {
    CharacterSpawn = instance_create(x,y,Player4_obj); 
    CharacterSpawn.creator = id; 
    Spawn = false; 
}