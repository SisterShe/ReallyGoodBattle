///AI_Input_Simulation(Input)

// Simulates given input key press for the player object.

//  device             = Which gamepad device "slot" to check.

//Converts arguments to locals.
var input = argument0;

//Check if laser double input.
if (string_copy(input, 0, 5) = "Laser")
{
    //Default false inputs.
    left_key = false;
    left_key_pressed = false;
    right_key = false;
    right_key_pressed = false;
    up_key = false;
    up_key_pressed = false;
    down_key = false;
    down_key_pressed = false;
    jump_key = false;
    jump_key_released = false;
    attack_key_held = false;
    attack_key_released = false;
    attack_key_tap = true;
    fullscreen_key = false;
    one_key = false;
    two_key = false;
    three_key = false;
    four_key = false;
    H_neutral = false;
    V_neutral = false;

    //Checks for laser direction.
    switch (input)
    {
        case "Laser Up":
        up_key = true;
        break;
        
        case "Laser Down":
        down_key = true;
        break;
        
        case "Laser Left":
        left_key = true;
        break;
        
        case "Laser Right":
        right_key = true;
        break;
    }
}
else
{
    //Check for Inputs.
    left_key = boolean_string("Left", input);
    left_key_pressed = boolean_string("Left", input);
    right_key = boolean_string("Right", input);
    right_key_pressed = boolean_string("Right", input);
    up_key = boolean_string("Up", input);
    up_key_pressed = boolean_string("Up", input);
    down_key = boolean_string("Down", input);
    down_key_pressed = boolean_string("Down", input);
    jump_key = boolean_string("Jump", input);
    jump_key_released = boolean_string("Jump", input);
    attack_key_held = boolean_string("Attack", input);
    attack_key_released = boolean_string("Attack", input);
    attack_key_tap = boolean_string("Attack", input);
    fullscreen_key = false;
    one_key = false;
    two_key = false;
    three_key = false;
    four_key = false;
    H_neutral = false;
    V_neutral = false;
    
    //Check for double jump input.
    if (input = "Jump Up")
    {
        jump_key = true;
        jump_key_released = true;
        up_key = true;
        up_key_pressed = true;
    }
    
    //Check for double jump input.
    if (input = "Jump Down")
    {
        jump_key = true;
        jump_key_released = true;
        down_key = true;
        down_key_pressed = true;
    }
    
    //Check for double jump input.
    if (input = "Jump Left")
    {
        jump_key = true;
        jump_key_released = true;
        left_key = true;
        left_key_pressed = true;
    }
    
    //Check for double jump input.
    if (input = "Jump Right")
    {
        jump_key = true;
        jump_key_released = true;
        right_key = true;
        right_key_pressed = true;
    }    
}
