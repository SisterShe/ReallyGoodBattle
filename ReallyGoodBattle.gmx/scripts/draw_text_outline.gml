///draw_text_outline(text, thickness, x, y);

//Script for drawing text with a shadowed outline. This outline is thicker then shadow.

//  text          = String to be drawn.
//  thickness     = Thickness of outline.
//  x             = X coordinate where to draw.
//  y             = Y coordinate where to draw.

//Converts arguments to local variables.
var txt = argument0;
var thickness = argument1;
var xx = argument2;
var yy = argument3;

//Saves drawing colour.
var colour = draw_get_colour();

//Draws Outlined Text
draw_set_color(c_black)
draw_text(xx+thickness,yy+thickness,txt)
draw_text(xx-thickness,yy-thickness,txt)
draw_text(xx,yy+thickness,txt)
draw_text(xx+thickness,yy,txt)
draw_text(xx,yy-thickness,txt)
draw_text(xx-thickness,yy,txt)
draw_text(xx-thickness,yy+thickness,txt)
draw_text(xx+thickness,yy-thickness,txt)

//Draws Normal Text
draw_set_color(colour)
draw_text(xx,yy,txt)
