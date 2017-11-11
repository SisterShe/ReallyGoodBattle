///animation_text_reveal_ext(original[], particle_system, particle, gradient, color1, color2, color3, color4);

// An extension of the animation_text_reveal script, which adds additional effects to the text reveal,
// such as particle bursts and gradient lines. Leave arguments as noone to not include the effect.

// original[]       = Array of original arguments from the animation_text_reveal script.
// particle_system  = Particle system for the particles to be created within.
// particle         = The particle which is to be bursted on new lines.
// gradient         = Boolean if gradient colors should be used.
// color1           = Color of the top left corner in gradient effect.
// color2           = Color of the top right corner in gradient effect.
// color3           = Color of the bottom right corner in gradient effect.
// color4           = Color of the bottom left corner in gradient effect.

// Dependencies: eng_animation_text_reveal, string_array_page_parser, animation_text_reveal

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
