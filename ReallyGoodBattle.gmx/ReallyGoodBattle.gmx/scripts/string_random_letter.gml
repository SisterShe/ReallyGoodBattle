///string_random_letter(length, lower, upper)

// Creates a random string with given length and returns it.
// String contains letters from the english A-Z alphabet.

// length           = Length of the desired string.
// upper            = Boolean if string should allow uppercase (True) or not (False).
// lower            = Boolean if string should allow lowercase (True) or not (False).

// @Return: String with random letters.

//Converts arguments to locals.
var length = argument0;
var upper = argument1;
var lower = argument2;

//Creates a string.
var str = "";

//Enters a loop.
while string_length(str) != length
{
    //Rolls a random chance.
    var roll = irandom(25);
    
    //Determines roll.
    switch roll
    {
        // A
        case 0:
            str += "a";
            break;
        
        // B
        case 1:
            str += "b";
            break;
        
        // C
        case 2:
            str += "c";
            break;
            
        // D
        case 3:
            str += "d";
            break;
            
        // E
        case 4:
            str += "e";
            break;
            
        // F
        case 5:
            str += "f";
            break;
            
        // G
        case 6:
            str += "g";
            break;
            
        // H
        case 7:
            str += "h";
            break;
            
        // I
        case 8:
            str += "i";
            break;
            
        // J
        case 9:
            str += "j";
            break;
            
        // K
        case 10:
            str += "k";
            break;
            
        // L
        case 11:
            str += "l";
            break;
            
        // M
        case 12:
            str += "m";
            break;
            
        // N
        case 13:
            str += "n";
            break;
            
        // O
        case 14:
            str += "o";
            break;
            
        // P
        case 15:
            str += "p";
            break;
            
        // Q
        case 16:
            str += "q";
            break;
            
        // R
        case 17:
            str += "r";
            break;
            
        // S
        case 18:
            str += "s";
            break;
            
        // T
        case 19:
            str += "t";
            break;
            
        // U
        case 20:
            str += "u";
            break;
            
        // V
        case 21:
            str += "v";
            break;
            
        // W
        case 22:
            str += "w";
            break;
            
        // X
        case 23:
            str += "x";
            break;
            
        // Y
        case 24:
            str += "y";
            break;
            
        // Z
        case 25:
            str += "z";
            break;
    }
}

//Check if both upper & lowercase.
if upper and lower
{
    //Rolls a random chance.
    if random_chance(50)
    {
        //Makes uppercase.
        string_upper(str);
    }
    else
    {
        //Makes lowercase.
        string_lower(str);
    }
}

//Check if uppercase.
else if upper and !lower
{
    //Makes uppercase.
    string_upper(str);
}

//Check if lowercase.
else if !upper and lower
{
    //Makes lowercase.
    string_lower(str);
}

//Returns string.
return str;
