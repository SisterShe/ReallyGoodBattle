///string_format_proper_name(text);

// Formats the given string to have the first letter be in uppercase and rest in lowercase.

//  string             = String to be formatted.

//@Return: Formatted string.

//Creates Variables
var str = argument0;

//Checks if 1 character.
if string_length(str) = 1
{
    str = string_upper(str);
}

//Check if multiple characters.
else if string_length(str) >= 2
{
    //Formats two copies of string.
    var copy1 = string_upper(string_copy(str, 1, 1));
    var copy2 = string_lower(string_copy(str, 2, string_length(str)));   
    
    //Adds the two copies.
    str = copy1 + copy2;
}

//Returns String
return str;
