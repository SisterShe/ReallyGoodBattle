///instance_create_singleton(x, y, object);

// Creates a single instance of an object if none already exist.
// Else returns the first existing instance found.

//  x            = The x position the object will be created at.
//  y            = The y position the object will be created at. 
//  object       = The object to create an instance of.

// @Return: Instance created, or existing instance.

//Converts arguments to locals.
var xx = argument0;
var yy = argument1;
var obj = argument2;
var instance = noone;

//Checks if instance exists.
if instance_number(obj) = 0
{
    instance = instance_create(xx, yy, obj);
}
else
{
    instance = instance_find(obj, 0);
}

//Returns instance.
return instance;
