///string_random_special(length)

// Creates a random string with given length and returns it.
// String contains only special characters such as !?#%".

// length           = Length of the desired string.

// @Return: String with random special characters.

//Converts arguments to locals.
var length = argument0;

//Creates a string.
var str = "";

//Enters a loop.
while string_length(str) != length
{
    //Rolls a random chance.
    var roll = irandom(34);
    
    //Determines roll.
    switch roll
    {
        // !
        case 0:
            str += "!";
            break;
        
        // "
        case 1:
            str += '"';
            break;
        
        // '
        case 2:
            str += "'";
            break;
            
        // @
        case 3:
            str += "@";
            break;
            
        // #
        case 4:
            str += "#";
            break;
            
        // £
        case 5:
            str += "£";
            break;
            
        // ¤
        case 6:
            str += "¤";
            break;
            
        // $
        case 7:
            str += "$";
            break;
            
        // %
        case 8:
            str += "%";
            break;
            
        // &
        case 9:
            str += "&";
            break;
            
        // /
        case 10:
            str += "/";
            break;
            
        // {
        case 11:
            str += "{";
            break;
            
        // (
        case 12:
            str += "(";
            break;
            
        // [
        case 13:
            str += "[";
            break;
            
        // ]
        case 14:
            str += "]";
            break;
            
        // )
        case 15:
            str += ")";
            break;
            
        // }
        case 16:
            str += "}";
            break;
            
        // =
        case 17:
            str += "=";
            break;
            
        // ?
        case 18:
            str += "?";
            break;
            
        // +
        case 19:
            str += "+";
            break;
            
        // -
        case 20:
            str += "-";
            break;
            
        // *
        case 21:
            str += "*";
            break;
            
        // |
        case 22:
            str += "|";
            break;
            
        // ´
        case 23:
            str += "´";
            break;
            
        // `
        case 24:
            str += "`";
            break;
            
        // ~
        case 25:
            str += "~";
            break;
            
        // ¨
        case 26:
            str += "¨";
            break;
            
        // ^
        case 27:
            str += "^";
            break;
            
        // '
        case 28:
            str += "'";
            break;
            
        // _
        case 29:
            str += "_";
            break;
            
        // <
        case 30:
            str += "<";
            break;
            
        // >
        case 31:
            str += ">";
            break;
            
        // \
        case 32:
            str += "\";
            break;
            
        // §
        case 33:
            str += "§";
            break;
            
        // ½
        case 34:
            str += "½";
            break;
    }
}

//Returns string.
return str;
