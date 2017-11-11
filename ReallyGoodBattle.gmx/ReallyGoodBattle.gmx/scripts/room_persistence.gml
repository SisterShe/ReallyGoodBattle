///room_persistence(room, boolean)

// Sets the given rooms persistence to given boolean.
// Does this by going the the room, changing persistence, then going back.

// room             = Given room to update persistence off.
// boolean          = Boolean value to set room_persistent to.

//Creates variables
var new_room = argument0;
var bool = argument1;
var old_room = room;

//Updates room persistence.
room_persistent = true;
room_goto(new_room);
room_persistent = false;
room_goto(old_room);
room_persistent = false;
