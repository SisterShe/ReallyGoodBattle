///draw_text_shadow(x, y, string, [color], [alpha], [xoffset], [yoffset]);

// Script for drawing text with a shadow. Does this by drawing text twice.

//  x             = The x coordinate of the drawn string.
//  y             = The y coordinate of the drawn string.
//  text          = The string to draw.
//  [color]       = Optional Argument. Color to draw the shadow. Default Black.
//  [alpha]       = Optional Argument. Alpha to draw the shadow. Default Full Opacity.
//  [xoffset]     = Optional Argument. x offset to draw the shadow at. Default 1.
//  [yoffset]     = Optional Argument. y offset to draw the shadow at. Default 1.

//Converts arguments to locals.
var xx = argument[0];
var yy = argument[1];
var txt = argument[2];
var color = c_black;
var alpha = 1;
var xoffset = 1;
var yoffset = 1;

//Optional arguments.
if (argument_count > 3)
{
    var color = argument[3];
}

//Optional arguments.
if (argument_count > 4)
{
    var alpha = argument[4];
}

//Optional arguments.
if (argument_count > 5)
{
    var xoffset = argument[5];
}

//Optional arguments.
if (argument_count > 6)
{
    var yoffset = argument[6];
}

//Saves drawing color.
var old_color = draw_get_colour();
var old_alpha = draw_get_alpha();

//Draws the shadow first.
draw_set_alpha(alpha);
draw_set_colour(color);
draw_text(xx + xoffset, yy + yoffset, txt);

//Draw Text Normal
draw_set_alpha(old_alpha);
draw_set_colour(old_color);
draw_text(xx, yy, txt);
