///instance_create_nextroom(x, y, object, [depth]);

// Creates an instance of given object upon entering the nextroom.
// Additionally you can give a depth of how many rooms to be changed before instance is created.
// Default the depth is 0, meaning it will create exactly upon next room. If 1, will first be created after 2 room changes.

//  x            = The x position the object will be created at.
//  y            = The y position the object will be created at. 
//  object       = The object to create an instance of.
//  [depth]      = Optional argument. The depth of room changes before instance is created.

// Dependencies: eng_obj_nextroom

//Converts arguments to locals.
var xx = argument[0];
var yy = argument[1];
var obj = argument[2];
var room_depth = 0;

//Optional arguments.
if argument_count = 4 
{
    room_depth = argument[3];
}

//Creates engine object to handle instance creation.
var engine_object = instance_create(x, y, eng_obj_nextroom);

//Sends over variables to object.
with engine_object
{
    count = 0;
    self.room_depth = room_depth;
    self.xx = xx;
    self.yy = yy;
    self.obj = obj;
}
