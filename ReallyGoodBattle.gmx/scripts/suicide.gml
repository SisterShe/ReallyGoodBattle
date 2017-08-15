///suicide([object]);

// Runs the instace destroy function on self. If object is given runs on object by using with.

//  [object]            = Optional Argument. Instance or index of object to destroy.

//Creates Variables
if argument_count = 1 { obj = argument[0]; } else { obj = self.id; }

//Runs code from object.
with obj
{
    //Destroys Object
    instance_destroy();
}
