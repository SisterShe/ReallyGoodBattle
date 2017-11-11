///draw_message(text, font, color, x, y, duration, speed);

// Draws a given message tempoarily with a fade in and fade out effect over a given duration.
// Note: Creates an object to handle drawing, should not be used within a draw event.

//  text            = The message that should be drawn.
//  font            = Font to use for drawing.
//  color           = Drawing color to be used.
//  x               = The x coordinate of where to draw the text. 
//  y               = The y coordinate of where to draw the text. 
//  duration        = Duration the text is displayed on the screen in steps.
//  speed           = The speed of the fade effect in percentage per step.

//Converts arguments to locals.
var text = argument0;
var font = argument1;
var color = argument2;
var xx = argument3;
var yy = argument4;
var duration = argument5;
var spd = argument6;

//Creates engine object.
var obj = instance_create(xx, yy, eng_draw_message);

//Sends over variables.
with obj
{
    self.text = text;
    self.font = font;
    self.color = color;
    self.xx = xx;
    self.yy = yy;
    self.spd = spd;
    alarm[0] = duration;
}
