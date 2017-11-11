///draw_sprite_transformed(sprite, subimg, x, y, xscale, yscale, angle);

// Draws the given sprite transformed/streched to given scale at given position.
// Useful for GUI elements that need to counter-scale the view.

//  sprite          = The index of the sprite to draw.
//  subimg          = The sub-image (frame) of the sprite to draw (image_index or -1 correlate to the current frame of animation in the object).
//  x               = The x coordinate of where to draw the sprite. 
//  y               = The y coordinate of where to draw the sprite. 
//  xscale          = The horizontal scaling of the sprite, as a multiplier: 1 = normal scaling, 0.5 is half etc...
//  yscale          = The vertical scaling of the sprite as a multiplier: 1 = normal scaling, 0.5 is half etc...
//  angle           = Angle of which to draw the sprite.

//Converts arguments to locals.
var sprite = argument0;
var subimg = argument1;
var xx = argument2;
var yy = argument3;
var xscale = argument4;
var yscale = argument5;
var angle = argument6;

//Creates variables.
var colour = c_white;
var alpha = draw_get_alpha();

//Draws the sprite.
draw_sprite_ext(sprite, subimg, xx, yy, xscale, yscale, angle, colour, alpha);
