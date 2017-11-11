///string_random(length, letters, numbers, special, upper, lower)

// Creates a random string with given length and returns it.
// String contains allowed arguments, allowing you to customize it.

// length           = Length of the desired string.
// letters          = Boolean if string should allow letters (True) or not (False).
// numbers          = Boolean if string should allow numbers (True) or not (False).
// special          = Boolean if string should allow special characters (True) or not (False).
// upper            = Boolean if string should allow uppercase (True) or not (False).
// lower            = Boolean if string should allow lowercase (True) or not (False).

// @Return: Randomily created string.

//Converts arguments to locals.
var length = argument0;
var letters = argument1;
var numbers = argument2;
var special = argument3;
var upper = argument4;
var lower = argument5;

//Creates a string.
var str = "";

//Enters a loop.
while string_length(str) != length
{
    //Rolls a random chance.
    var roll = irandom(2);
    
    //Checks to see what roll was.
    switch roll
    {
        //Letters
        case 0:        

            //Check if letters.
            if letters 
            {
                str += string_random_letter(1, lower, upper);
            }
            break;
        
        //Numbers
        case 1:
        
            //Check if letters.
            if numbers 
            {
                str += string_random_number(1);
            }
            break;
            
        //Characters
        case 2:
        
            //Check if letters.
            if special 
            {
                str += string_random_special(1);
            }
            break;
    }
}

//Returns created string.
return str;
