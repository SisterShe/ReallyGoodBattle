///scr_add_credits(text, font, color);

// Script for creating credit data objects to the credit controllers ds_list.
// This creates text for a single line. New credits are added to next line.

// text             = String of the text in the credit.
// font             = Font to be used in the drawing of the credit.
// color            = Drawing color to be used for text.

// Dependencies: ctr_credits

//Converts arguments to locals.
var text = argument0;
var font = argument1;
var color = argument2;

//Creates the data object.
var obj = instance_create(x, y, eng_data);
with (obj)
{
    self.text = text;
    self.font = font;
    self.color = color;
}

//Stores data.
ds_list_add(credits, obj);

