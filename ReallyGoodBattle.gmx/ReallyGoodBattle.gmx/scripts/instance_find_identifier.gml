///instance_find_identifier(id, object);

// Finds existing instance of an object with a unique identifier. If instance is not found returns noone.
// Make sure every instance of object have an eng_singleton_identifier variable or will cause errors.

//  id           = Unique identifier to check for, stored as eng_singleton_identifier.
//  object       = The object type to find instance with identifier of.

// Dependencies: eng_singleton_identifier
// @Return: Instance found or noone.

//Converts arguments to locals.
var identifier = argument0;
var obj = argument1;

//Creates variables.
var instance = noone;
var check = noone;
var found = false;
var i;

//Checks for existing instance with id.
for (i = 0; i < instance_number(obj); i++)
{
    check = instance_find(obj, i);
    if (check.eng_singleton_identifier = identifier)
    {
        found = true;
        break;
    }
}

//Checks if instance was found.
if (found)
{
    //Sets instance to existing.
    instance = check;
}

//Returns instance.
return instance;
