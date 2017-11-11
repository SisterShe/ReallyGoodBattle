///animation_text_popup(depth, cspd, aspd, font, halign, valign, x, y, text, sep, width, duration, distance, direction, color1, color2);

// Animates a popup message that slowly fades in and moves a distance in the given direction,
// fading out once duration ends. Useful for short messages such as combat numbers or similar.

// depth            = Drawing depth to be used.
// cspd             = Speed of the color transition effect in decimals per step.
// aspd             = Speed of the alpha transition effect in decimals per step.
// font             = Font resource to be used for drawing.
// halign           = The horizontal drawing alignment for drawing.
// valign           = The vertical drawin alignment for drawing.
// x                = The x coordinate of the drawn string.
// y                = The y coordinate of the drawn string.
// text             = The string to draw.
// sep              = The distance in pixels between lines of text.
// width            = The maximum width in pixels of the string before a line break.
// duration         = Total duration for text in steps.
// distance         = Distance for the text to travel in pixels.
// direction        = The direction for the text to travel in degrees. 0 = right.
// color1           = Initial starting color of text. 
// color2           = Final end color of text. 

// Dependencies: eng_animation_text_popup, tween_quintic_out

// @Return: Instance of eng_animation_text_popup.

//Converts arguments to locals.
var draw_depth = argument0;
var cspd = argument1;
var aspd = argument2;
var font = argument3;
var halign = argument4;
var valign = argument5;
var xx = argument6;
var yy = argument7;
var text = argument8;
var sep = argument9;
var width = argument10;
var duration = argument11;
var distance = argument12;
var angle = argument13;
var color1 = argument14;
var color2 = argument15;

//Creates engine object.
var obj = instance_create(xx, yy, eng_animation_text_popup);

//Sends over variables.
with (obj)
{
    //Data Variables
    depth = draw_depth;
    self.cspd = cspd;
    self.aspd = aspd;
    self.font = font;
    self.halign = halign;
    self.valign = valign;
    self.xx = xx;
    self.yy = yy;
    final_x = xx + lengthdir_x(distance, angle);
    final_y = yy + lengthdir_y(distance, angle);
    self.text = text;
    self.sep = sep;
    self.width = width;
    self.duration = duration;
    self.distance = distance;
    self.angle = angle;
    self.color1 = color1;
    self.color2 = color2;
    alarm[0] = duration;
}

//Returns object.
return obj;
