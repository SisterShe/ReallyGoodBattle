///suicide_delay(delay, [object]);

// Runs the instace destroy function on self, after the given delay in steps have passed.
// If object is given runs on object by using with.

//  delay             = Number of steps until suicide occurs.
//  object            = Optional Argument. Instance or index of object to destroy.

//Creates Variables
var delay = argument[0];
if argument_count = 2 { var obj = argument[1]; } else { var obj = self.id; }

//Creates delay object.
var eng = instance_create(x, y, eng_obj_suicide);

//Sends over variables.
with eng
{
    self.obj = obj;
    alarm[0] = delay;
}



