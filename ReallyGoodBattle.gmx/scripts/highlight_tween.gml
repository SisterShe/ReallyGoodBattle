///highlight_tween(id, tween, value, duration, lower, upper);

// Returns a value between the given start and final value depending on mouseover.
// This value is then acheived by following a tween over the given amount of steps, slowly
// approaching either the upper value for mouseover or lower value for no mouseover.

// Note: Use within a step event.

// id               = Unique identifier used to retrive object that stores tweening data.
// tween            = Tween script for effect to be used for mouseover.
// value            = Current value of the tween.
// duration         = Total number of steps for the tween to complete. 
// lower            = Lower value of the tween. Value reached when no mouseover.
// upper            = Upper value of the tween. Value reached when mouseover.

// Dependencies: eng_highlight_tween, tween script used.

// @Return: Value for tween at current step, between start and end value.

//Converts arguments to locals.
var identifier = argument0;
var tween = argument1;
var value = argument2;
var duration = argument3;
var lower = argument4;
var upper = argument5;

//Retrives the instance from the identifier.

//Singleton Identifier Arguments.
var xx = 0;
var yy = 0;
var obj = eng_highlight_tween;

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

//Sets object to instance.
obj = instance;

//Sends over variables.
with (obj)
{
    //Data variables.
    self.tween = tween;
    self.obj = other.id;
    self.duration = duration;
    self.lower = lower;
    self.upper = upper;
    self.value = value;
}

//Delayed Creation Code
if (!found)
{
    with (obj)
    {
        event_user(1);
    }
}

//Executes a single step of the tween.
with (obj)
{
    event_user(0);
}

//Retrives and returns value.
return obj.value;
