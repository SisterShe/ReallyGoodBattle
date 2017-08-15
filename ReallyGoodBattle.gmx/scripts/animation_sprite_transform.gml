///animation_sprite_transform(sprite, subimg, depth, duration, tween, event, xvalues[], yvalues[]);

// Animates the given sprite from one distortion effect to another over the given duration,
// with given tween effect. Once animation is done, calls given user_defined event on caller.

// sprite           = Index of sprite to be drawn.
// subimg           = The subimg (frame) of the sprite to draw.
// depth            = Drawing depth to use for drawing.
// duration         = Duration for the animation to complete in steps.
// tween            = Tween effect to be used for animation.
// event            = User_Defined event to be called once animation is complete.

// The following variables should be an array with coordinates for transformation in clockwise order.
// Note: There should be a maximum of 8 coordinate sets, one for each corner of the sprite.
//       Initial four are starting coordinates, remaining four are end coordinates.
 
// xvalues[]        = Array containing 8 x coordinates for sprite transformation.
// yvalues[]        = Array containing 8 y coordinates for sprite transformation.

// Dependencies: tween effect used, eng_animation_sprite_transform

// @Return: Instance of eng_animation_sprite_transform.

//Converts arguments to locals.
var sprite = argument0;
var subimg = argument1;
var draw_depth = argument2;
var duration = argument3;
var tween = argument4;
var event = argument5;
var xvalues = argument6;
var yvalues = argument7;

//Creates engine object.
var obj = instance_create(x, y, eng_animation_sprite_transform);

//Sends over variables.
with (obj)
{
    self.caller = other.id;
    self.sprite = sprite;
    self.subimg = subimg;
    self.depth = draw_depth;  
    self.duration = duration;
    self.tween = tween;
    self.event = event;
    self.xvalues = xvalues;
    self.yvalues = yvalues;
}

//Returns object.
return obj;
