///draw_text_outline_transformed(text, thickness, x, y, xscale, yscale, angle);

// Script for drawing text with a shadowed outline. This outline is thicker then shadow.
// This extended variation can also transform the text to match a zoom scale and rotation.

//  text          = String to be drawn.
//  thickness     = Thickness of outline.
//  x             = X coordinate where to draw.
//  y             = Y coordinate where to draw.
//  xscale        = The horizontal scale (default 1).
//  yscale        = The vertical scale(default 1).
//  angle         = The angle of the text. 

//Converts arguments to local variables.
var txt = argument0;
var thickness = argument1;
var xx = argument2;
var yy = argument3;
var xscale = argument4;
var yscale = argument5;
var angle = argument6;

//Saves drawing colour.
var colour = draw_get_colour();

//Draws Outlined Text
draw_set_color(c_black)
draw_text_transformed(xx+thickness,yy+thickness,txt, xscale, yscale, angle)
draw_text_transformed(xx-thickness,yy-thickness,txt, xscale, yscale, angle)
draw_text_transformed(xx,yy+thickness,txt, xscale, yscale, angle)
draw_text_transformed(xx+thickness,yy,txt, xscale, yscale, angle)
draw_text_transformed(xx,yy-thickness,txt, xscale, yscale, angle)
draw_text_transformed(xx-thickness,yy,txt, xscale, yscale, angle)
draw_text_transformed(xx-thickness,yy+thickness,txt, xscale, yscale, angle)
draw_text_transformed(xx+thickness,yy-thickness,txt, xscale, yscale, angle)

//Draws Normal Text
draw_set_color(colour)
draw_text_transformed(xx,yy,txt, xscale, yscale, angle)
