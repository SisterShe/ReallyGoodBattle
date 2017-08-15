///input_gamepad_any(device);

// Checks if any gamepad input is given. Returns the given input if any is detected, else returns false.

// device           = Slot value for gamepad.

// @Return: Index of input detected, else false.

//Converts arguments to variables.
var device = argument[0];

//Loops through all gamepad inputs.
for (var i = gp_face1; i < gp_padr; i++)
{
    if (gamepad_button_check(0, i))
    {
        return i;
    }
}

//Returns false.
return false;
