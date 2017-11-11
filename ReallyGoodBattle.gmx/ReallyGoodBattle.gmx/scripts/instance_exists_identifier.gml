///instance_exists_identifier(id, object);

// Checks if given object or instance exists with given identifier. Returns true if instance exists, false it it doesn't.
// Make sure every instance of object have an eng_singleton_identifier variable or will cause errors.

//  id           = Unique identifier to check for, stored as eng_singleton_identifier.
//  object       = The object to check if instance with identifier exists of.

// Dependencies: eng_singleton_identifier
// @Return: Boolean

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

//Returns boolean.
return found;
