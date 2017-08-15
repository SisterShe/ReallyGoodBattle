///event_user_ext(object, number);

// Calls the specififed user defined event on the specified object.
// Can be an instance or an object index.

//  object             = The object or instance whose event are to be called.
//  number             = The number of the event to be called. Can be from 0 to 15.

//Converts arguments to local variables.
var object = argument0;
var number = argument1;

//Calls the event.
with object
{
    event_user(number);
}
