///instance_create_room(x, y, object, room);

// Creates an instance of given object upon entering the given room.

//  x            = The x position the object will be created at.
//  y            = The y position the object will be created at. 
//  object       = The object to create an instance of.
//  room         = Index of the room to create instance upon entering.

//Converts arguments to locals.
var xx = argument[0];
var yy = argument[1];
var obj = argument[2];
var room_check = argument[3];

//Creates engine object to handle instance creation.
var engine_object = instance_create(x, y, eng_obj_room);

//Sends over variables to object.
with engine_object
{
    self.room_check = room_check;
    self.xx = xx;
    self.yy = yy;
    self.obj = obj;
}
