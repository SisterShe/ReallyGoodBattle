///scr_room_xfade(room, steps);

// Changes the current room to the given room over given amount of steps.
// Does this by going to the next room and taking a screenshot, then goes back to
// previous room and drawing this screenshot and changing it's alpha.
// This causes a crossfade transition effect between the two rooms.

// NOTE: May cause errors with room events, as this uses 2 room changes.

// room             = Desired room to goto.
// steps            = Total number of steps it take for the fade to complete.

// Dependencies: eng_room_xfade

//Creats variables.
var new_room = argument0;
var steps = argument1;
var spd = 1 / steps;
var colour = argument2;


//Makes current room persistent.
room_persistent = true;

//Enters next room and takes a screenshot.
room_goto(new_room);


//Creates fade object.
var obj = instance_create(x, y, eng_room_cfade);

//Sends over variables.
with obj
{
    self.new_room = new_room;
    self.colour = colour;
    self.spd = spd;
}
