///draw_text_outline_ext(text, thickness, x, y, sep, width, [color], [alpha]);

//Script for drawing text with a shadowed outline. This outline is thicker then shadow.

//  text          = String to be drawn.
//  thickness     = Thickness of outline.
//  x             = X coordinate where to draw.
//  y             = Y coordinate where to draw.
//  sep           = The distance in pixels between lines of text.
//  width         = The maximum width in pixels of the string before a line break.
//  [color]       = Optional Argument. Color to draw the shadow. Default Black.
//  [alpha]       = Optional Argument. Alpha to draw the shadow. Default Full Opacity.

//Converts arguments to local variables.
var txt = argument[0];
var thickness = argument[1];
var xx = argument[2];
var yy = argument[3];
var sep = argument[4];
var width = argument[5];
var color = c_black;
var alpha = 1;

//Optional arguments.
if (argument_count > 6)
{
    var color = argument[6];
}

//Optional arguments.
if (argument_count > 7)
{
    var alpha = argument[7];
}

//Saves drawing color.
var old_color = draw_get_colour();
var old_alpha = draw_get_alpha();

//Draws Outlined Text
draw_set_alpha(alpha);
draw_set_color(color);
draw_text_ext(xx+thickness, yy+thickness, txt, sep, width);
draw_text_ext(xx-thickness, yy-thickness, txt, sep, width);
draw_text_ext(xx, yy+thickness, txt, sep, width);
draw_text_ext(xx+thickness, yy, txt, sep, width);
draw_text_ext(xx, yy-thickness, txt, sep, width);
draw_text_ext(xx-thickness, yy, txt, sep, width);
draw_text_ext(xx-thickness, yy+thickness, txt, sep, width);
draw_text_ext(xx+thickness, yy-thickness, txt, sep, width);

//Draw Text Normal
draw_set_alpha(old_alpha);
draw_set_colour(old_color);
draw_text_ext(xx, yy, txt, sep, width)
