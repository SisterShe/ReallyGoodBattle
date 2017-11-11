///background_cfade(background, steps, colour);

// Changes the current background to the given background over given amount of steps.
// Does this by drawing a rectangle across the screen and changings it's alpha.
// This causes a fade-effect in the given colour.

// background       = Background resource to be changed to.
// steps            = Number of steps it takes for the background to be changed.
// colour           = Desired drawing colour of the fade effect. 

// Dependencies: eng_bg_cfade

//Creats variables.
var background = argument0;
var steps = argument1;
var spd = 1 / steps;
var colour = argument2;

//Creates fade object.
var obj = instance_create(x, y, eng_bg_cfade);

//Sends over variables.
with obj
{
    self.colour = colour;
    self.background = background;
    self.spd = spd;
}
