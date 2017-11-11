///camera_follow(instance, hborder, vborder, inside);

// Causes the camera to follow the given instance. Note: Creates a non-persistent instance.
// Make sure global.camera_index have been initilazied by using camera_setup().

// instance         = Instance ID of object to follow.
// hborder          = Horizontal border size for view following. Make half of view_wview to be centered.
// vborder          = Vertical border size for view following. Make half of view_hview to be centered.
// inside           = Whether the camera will be clamped inside room (True) or allow outside (False).

// Dependencies: eng_camera_follow, global.camera_index

//
//TODO:
//hborder and vborder while inside = false and camera speed variables 4 #funtime

//A manual follow on given object in the eng_camera follow, that takes into account inside
//and clamps values inside the room. This is to work in conjunction with the camera_shake n such effects,
//when they allow outside room, so they can overwrite given value from this camera follow functionz.
//


//Creates variables.
var instance = argument0;
var hborder = argument1;
var vborder = argument2;
var inside = argument3;
var index = global.camera_index;

//Updates view borders.
view_hborder[index] = hborder;
view_vborder[index] = vborder;

//Check if camera is inside.
if !inside
{
    //Create camera object.
    var obj = instance_create(x, y, eng_camera_follow);
    
    //Sends over variables.
    with obj
    {
        follow = instance;
        self.hborder = hborder;
        self.vborder = vborder;
        self.index = index;   
    }
}
else
{
    //Sets camera to follow instance.
    view_object[index] = instance;
}
