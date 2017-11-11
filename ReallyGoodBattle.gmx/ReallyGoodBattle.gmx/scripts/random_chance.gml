///random_chance(chance);

// Rolls a random chance and returns true if passed and false if failed.
// Example: If chance is 75, there is a 75% chance for true to return.

//  chance          = Percentage chance to return true.

// @Return: True if passed, false if failed.

//Creates Variables
var chance = argument0 / 100;
var passed = false;

//Rolls chance.
var value = irandom(1);

//Checks if passed.
if value >= chance
{
    passed = true;
}

//Returns
return passed;
