///instance_create_identifier(id, x, y, object);

// Creates an instance of given object and stores given identifier variable to it.

// NOTE: Creates the following instance variables on object:
// eng_singleton_identifier

//  id           = Unique identifier that instance will use.
//  x            = The x position the object will be created at.
//  y            = The y position the object will be created at.
//  object       = The object to create an instance of.

// @Return: Instance created.

//Converts arguments to locals.
var identifier = argument0;
var xx = argument1;
var yy = argument2;
var obj = argument3;

//Creates object
var instance = instance_create(xx, yy, obj);

//Sends over variables to object.
with (instance)
{
    eng_singleton_identifier = identifier;
}

//Returns instance.
return instance;
