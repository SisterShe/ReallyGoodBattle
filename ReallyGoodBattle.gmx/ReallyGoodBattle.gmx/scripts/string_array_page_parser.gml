#define string_array_page_parser
///string_array_page_parser(string, array, width, height, font, halign, valign, [sep])

// Parses the given string into an array. Each index in the array will contain all associated text for the page.
// Note: Array should be empty as will overwrite any elements in it. Index 0 will contain the first page, and so on.
// Returns the total amount of pages in the array.

// string           = String to be parsed and stored into the array.
// array            = Array for string to be stored in.
// width            = Maximum width of the string, before a new line is to be created.
// height           = Maximum height of a page, before a new page is to be created.
// font             = Font to do calculations with. Should be same as potiental draw font.
// halign           = Horizontal alignment to do drawing calcuations with.
// valign           = Vertical alignment to do drawing calcuations with.
// sep              = Optional argument. Distance between new lines of text. Default font size / 2.

// @Return: Amount of pages that have been created.

//Converts arguments to locals.
var text = argument[0];
var array = argument[1];
var page_width = argument[2];
var page_height = argument[3];
var font = argument[4];
var halign = argument[5];
var valign = argument[6];
var sep = font_get_size(font) / 2;

//Optional Arguments
if (argument_count = 8)
{
    sep = argument[7]
}

//Setups variables for loop.
draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
var current = 1;
var total = 1;
var length = string_length(text) + 1;
var page_count = 0;

//Enters a loop for each letter.
while (total < length)
{    
    //Makes a copy for current page.
    var copy = string_copy(text, 1, current);
    
    //Stores the page.
    array[@page_count] = copy;
    
    //Checks for line break.
    if (string_char_at(copy, current) = "#" and string_char_at(copy, current-1) != "\")
    {
        //Clears the main text string, to calculate for new page.
        text = string_delete(text, 1, current);
        current = 0;
        
        //Increments Page Count.
        page_count += 1;
    }
    
    //Calcuates the height of current copy.
    var height = string_height_ext(copy, sep, page_width);
    
    //Checks to see if new page.
    if (height >= page_height)
    {                    
        //Checks ahead for word completion.
        var skip = 0;
        for (var i = current; i < length; i++)
        {
            //Checks for space.
            if (string_char_at(text, i) = " ")
            {
                skip = i;
                break;
            }
        }

        //If word completion ahead.
        if (skip != 0)
        {
            //Checks behind for word start.
            var start = 0;
            for (var i = current; i > 1; i--)
            {
                //Checks for space.
                if (string_char_at(text, i) = " ")
                {
                    start = i;
                    break;
                }
            }
            
            //Checks if word start.
            if (start != 0)
            {
                //Updates copy for current page.
                copy = string_copy(text, 1, start);
                array[@page_count] = copy;
            }
        }
        
        //Decrements Strings.
        var delta = start - current;
        current += delta;
        total += delta;
        
        //Clears the main text string, to calculate for new page.
        text = string_delete(text, 1, current);
        current = 0;
        
        //Increments Page Count.
        page_count += 1;
    }
    
    //Increments Strings.
    current += 1;
    total += 1;
}

//Returns final page count.
return page_count;

#define script100
///string_array_page_parser(string, array, width, height, font, halign, valign, [sep])

// Parses the given string into an array. Each index in the array will contain all associated text for the page.
// Note: Array should be empty as will overwrite any elements in it. Index 0 will contain the first page, and so on.
// Returns the total amount of pages in the array.

// string           = String to be parsed and stored into the array.
// array            = Array for string to be stored in.
// width            = Maximum width of the string, before a new line is to be created.
// height           = Maximum height of a page, before a new page is to be created.
// font             = Font to do calculations with. Should be same as potiental draw font.
// halign           = Horizontal alignment to do drawing calcuations with.
// valign           = Vertical alignment to do drawing calcuations with.
// sep              = Optional argument. Distance between new lines of text.

// @Return: Amount of pages that have been created.

//Converts arguments to locals.
var text = argument[0];
var array = argument[1];
var page_width = argument[2];
var page_height = argument[3];
var font = argument[4];
var halign = argument[5];
var valign = argument[6];
var sep = font_get_size(font) / 2;

//Optional Arguments
if (argument_count = 8)
{
    sep = argument[7]
}

//Setups variables for loop.
draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
var current = 1;
var total = 1;
var length = string_length(text);
var page_count = 0;

//Enters a loop for each letter.
while (total < length)
{    
    //Makes a copy for current page.
    var copy = string_copy(text, 1, current);
    
    //Stores the page.
    array[@page_count] = copy;
    
    //Calcuates the height of current copy.
    var height = string_height_ext(copy, sep, page_width);
    
    //Checks for line break.
    if (string_char_at(copy, current) = "#")
    {
        //Clears the main text string, to calculate for new page.
        text = string_delete(text, 1, current);
        current = 0;
        
        //Increments Page Count.
        page_count += 1;
    }
    
    //Checks to see if new page.
    if (height >= page_height)
    {            
        //Clears the main text string, to calculate for new page.
        text = string_delete(text, 1, current);
        current = 0;
        
        //Increments Page Count.
        page_count += 1;
       
    }
        
        
    {
        //Checks ahead for word completion.
        var i = current;
        var count = i + 50;
        var length_2 = string_length(text);
        var ii = 0;
        
        //Enters a loop to check ahead for word completion.
        while (i < count and i < length_2)
        {                
            //Checks for linebreak.
            if string_char_at(text, i) = " " and string_char_at(text, i+1) = " "
            {
                //Updates Variables
                var copy = string_copy(text, 1, i+1);
                pages[page_count] = copy;
                current += ii + 1;
                total += ii + 1;

                //Breaks the loop.
                break;
            }
            
            //Loop Incrementation
            ii++;
            i++;
        }  
        
        
        //Clears the main text string, to calculate for new page.
        text = string_delete(text, 1, current);
        current = 0;
        
        //Increments Page Count.
        page_count += 1;
    }
    
    
    

    
    
    
    
    //Checks for word completion.
    if (string_char_at(copy, current) = " " or string_char_at(copy, current) = "#")
    {
        //Stores the page.
        array[@page_count] = copy;
        
        //Calcuates the height of current copy.
        var height = string_height_ext(copy, sep, page_width);
        
        //Checks to see if new page.
        if (height >= page_height or string_char_at(copy, current) = "#")
        {            
            //Clears the main text string, to calculate for new page.
            text = string_delete(text, 1, current);
            current = 0;
            
            //Increments Page Count.
            page_count += 1;
        }
    }
    
    //Increments Strings.
    current += 1;
    total += 1;
    
    //Checks for last word.
    /*
    if total < length
    {
        //Stores the page.
        current += 1;
        var copy = string_copy(text, 1, current);
        array[@page_count] = copy;
    }
    */
}

//Returns final page count.
return page_count;