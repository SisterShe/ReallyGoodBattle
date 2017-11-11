///draw_text_shadow_ext(x, y, string, sep, width, [color], [alpha], [xoffset], [yoffset]);

// Script for drawing text with a shadow. Does this by drawing text twice.

//  x             = The x coordinate of the drawn string.
//  y             = The y coordinate of the drawn string.
//  text          = The string to draw.
//  sep           = The distance in pixels between lines of text.
//  width         = The maximum width in pixels of the string before a line break.
//  [color]       = Optional Argument. Color to draw the shadow. Default Black.
//  [alpha]       = Optional Argument. Alpha to draw the shadow. Default Full Opacity.
//  [xoffset]     = Optional Argument. x offset to draw the shadow at. Default 1.
//  [yoffset]     = Optional Argument. y offset to draw the shadow at. Default 1.

//Converts arguments to locals.
var xx = argument[0];
var yy = argument[1];
var txt = argument[2];
var sep = argument[3];
var width = argument[4];
var color = c_black;
var alpha = 1;
var xoffset = 1;
var yoffset = 1;

//Optional arguments.
if (argument_count > 5)
{
    var color = argument[5];
}

//Optional arguments.
if (argument_count > 6)
{
    var alpha = argument[6];
}

//Optional arguments.
if (argument_count > 7)
{
    var xoffset = argument[7];
}

//Optional arguments.
if (argument_count > 8)
{
    var yoffset = argument[8];
}

//Saves drawing color.
var old_color = draw_get_colour();
var old_alpha = draw_get_alpha();

//Draws the shadow first.
draw_set_alpha(alpha);
draw_set_colour(color);
draw_text_ext(xx + xoffset, yy + yoffset, txt, sep, width);

//Draw Text Normal
draw_set_alpha(old_alpha);
draw_set_colour(old_color);
draw_text_ext(xx, yy, txt, sep, width);
