///string_random_number(length)

// Creates a random string with given length and returns it.
// String contains numbers from the value 0-9.

// length           = Length of the desired string.

// @Return: String with random numbers.

//Converts arguments to locals.
var length = argument0;

//Creates a string.
var str = "";

//Enters a loop.
while string_length(str) != length
{
    //Rolls a random chance.
    var roll = irandom(8);
    
    //Determines roll.
    switch roll
    {
        // 0
        case 0:
            str += "0";
            break;
        
        // 1
        case 1:
            str += "1";
            break;
        
        // 2
        case 2:
            str += "2";
            break;
            
        // 3
        case 3:
            str += "3";
            break;
            
        // 4
        case 4:
            str += "4";
            break;
            
        // 5
        case 5:
            str += "5";
            break;
            
        // 6
        case 6:
            str += "6";
            break;
            
        // 7
        case 7:
            str += "7";
            break;
            
        // 8
        case 8:
            str += "8";
            break;
            
        // 9
        case 9:
            str += "9";
            break;
    }
}

//Returns string.
return str;
