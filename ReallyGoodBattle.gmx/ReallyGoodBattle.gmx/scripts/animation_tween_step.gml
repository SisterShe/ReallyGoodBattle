///animation_tween_step(id, boolean, tween, value, duration, lower, upper);

// Returns a value between the given start and final value depending on boolean.
// This value is then acheived by following a tween over the given amount of steps, slowly
// approaching either the upper value for True or lower value for False.

// Note: Use within a step event.

// id               = Unique identifier used to retrive object that stores tweening data.
// boolean          = Boolean value to determine if should approach upper or lower.
// tween            = Tween script for effect to be used.
// value            = Current value of the tween.
// duration         = Total number of steps for the tween to complete. 
// lower            = Lower value of the tween. Value reached when False.
// upper            = Upper value of the tween. Value reached when True.

// Dependencies: eng_animation_tween_step, tween script used.

// @Return: Value for tween at current step, between start and end value.

//Converts arguments to locals.
var identifier = argument0;
var boolean = argument1;
var tween = argument2;
var value = argument3;
var duration = argument4;
var lower = argument5;
var upper = argument6;

//Creates variables.
var obj = eng_animation_tween_step;
var instance = noone;
var check = noone;
var found = false;
var i;

//Checks for existing instance with id.
for (i = 0; i < instance_number(obj); i++)
{
    //Finds instance from the identifier.
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
else
{
    //Creates new instance.
    instance = instance_create(0, 0, obj);
    instance.eng_singleton_identifier = identifier;
}

//Sets object to instance.
obj = instance;

//Sends over variables.
with (obj)
{
    //Data variables.
    self.obj = other.id;
    self.boolean = boolean;
    self.tween = tween;
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
