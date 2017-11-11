///animation_text_reveal(gui, depth, duration, tspd, cspd, aspd, color1, color2, font, halign, valign, x, y, string, sep, width);

// Animates a draw_text_ext with a typewriter, alpha and color transition effect for individual chars.
// Returns the animation engine object, which can be manipulated by calling it's user_defined events to 
// pause, unpause, start fadeout or show all text immedieatly.
// Use -1 as duration to have it last forever or until destroyed manually or upon room end.

// gui              = Boolean if draw_gui should be used (True) or normal draw event (False).
// depth            = Drawing depth to be used.
// duration         = Total duration for text in steps. -1 to last forever.
// tspd             = Speed of the text reveal typewriter effect in characters per step.
// cspd             = Speed of the color transition effect in decimals per step.
// aspd             = Speed of the alpha transition effect in decimals per step.
// color1           = Initial starting color of text. Usually short for cinematic effect.
// color2           = Final end color of text. Resting color once animation complete.
// font             = Font resource to be used for drawing.
// halign           = The horizontal drawing alignment for drawing.
// valign           = The vertical drawin alignment for drawing.
// x                = The x coordinate of the drawn string.
// y                = The y coordinate of the drawn string.
// string           = The string to draw.
// sep              = The distance in pixels between lines of text.
// width            = The maximum width in pixels of the string before a line break.

// Dependencies: eng_animation_text_reveal, string_array_page_parser

// @Return: Instance of eng_animation_text_reveal.

//Converts arguments to locals.
var gui = argument0;
var draw_depth = argument1;
var duration = argument2;
var tspd = argument3;
var cspd = argument4;
var aspd = argument5;
var color1 = argument6;
var color2 = argument7;
var font = argument8;
var halign = argument9;
var valign = argument10;
var xx = argument11;
var yy = argument12;
var text = argument13;
var sep = argument14;
var width = argument15;

//Creates engine object.
var obj = instance_create(xx, yy, eng_animation_text_reveal);

//Sends over variables.
with (obj)
{
    depth = draw_depth;
    self.gui = gui;
    self.duration = duration;
    self.tspd = tspd;
    self.cspd = cspd;
    self.aspd = aspd;
    self.color1 = color1;
    self.color2 = color2;
    self.font = font;
    self.halign = halign;
    self.valign = valign;
    self.xx = xx;
    self.yy = yy;
    self.text = text;
    self.sep = sep;
    self.width = width;
}

//Delayed creation code.
with (obj)
{
    event_user(2);
}

//Returns object.
return obj;
