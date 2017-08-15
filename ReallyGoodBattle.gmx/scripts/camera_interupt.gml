///camera_interupt();

// Destroys all active camera engine objects prematurely, interupting and ending their effects.
// Make sure global.camera_index have been initilazied by using camera_setup().

// Dependencies: global.camera_index, eng_camera_zoom, eng_camera_move, eng_camera_shake, eng_camera_follow

//Creates variables.
var index = global.camera_index;

//Clears camera objects.
with eng_camera_zoom
{
    instance_destroy();
}

//Clears camera objects.
with eng_camera_move
{
    instance_destroy();
}

//Clears camera objects.
with eng_camera_shake
{
    instance_destroy();
}

//Clears camera objects.
with eng_camera_follow
{
    instance_destroy();
}
