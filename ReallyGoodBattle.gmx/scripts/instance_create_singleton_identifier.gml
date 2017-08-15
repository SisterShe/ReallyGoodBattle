///instance_create_singleton_identifier(id, x, y, object);

// Creates a single instance of an object with a unique identifier if none already exist.
// Else returns the existing instance with the identifier variable.

// NOTE: Creates the following instance variables on object: 
// eng_singleton_identifier

//  id           = Unique identifier to check for and use.
//  x            = The x position the object will be created at.
//  y            = The y position the object will be created at. 
//  object       = The object to create an instance of.

// Dependencies: eng_singleton_identifier
// @Return: Instance created, or existing instance.

//Converts arguments to locals.
var identifier = argument0;
var xx = argument1;
var yy = argument2;
var obj = argument3;

//Creates variables.
var instance = noone;
var check = noone;
var found = false;
var i;

//Checks for existing instance with id.
for (i = 0; i < instance_number(obj); i++)
{
    check = instance_find(obj, i);
    if !is_undefined(check.eng_singleton_identifier)
    {
        if (check.eng_singleton_identifier = identifier)
        {
            found = true;
            break;
        }
    
    }
    
    
}

//Checks if instance was found.
if (found)
{
    //Sets instance to existing.
    instance = check;
}
else
{
    //Creates new instance.
    instance = instance_create(xx, yy, obj);    
    instance.eng_singleton_identifier = identifier;
}

//Returns instance.
return instance;
