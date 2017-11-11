///background_xfade(background, steps);

// Changes the current background to the given background over given amount of steps.
// Does this by adding the background on top and slowly changing the alpha.
// This causes a crossfade type effect on the backgrounds.

// background       = Background resource to be changed to.
// steps            = Number of steps it takes for the background to be changed.

// Dependencies: event_user_ext, eng_bg_xfade

//Creats variables.
var background = argument0;
var steps = argument1;
var spd = 1 / steps;

//Creates fade object.
var obj = instance_create(x, y, eng_bg_xfade);

//Sends over variables.
with obj
{
    self.background = background;
    self.spd = spd;
    io = 0; //Additonal variables that can be made into arguments.
    in = 1; //Additonal variables that can be made into arguments.
}

//Starts delayed creation code.
event_user_ext(obj, 0);
