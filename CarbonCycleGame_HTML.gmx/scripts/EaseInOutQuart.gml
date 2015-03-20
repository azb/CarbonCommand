/*
    EaseInOutQuart(time, start, change, duration)
*/

argument0 /= argument3 * 0.5;

if (argument0 < 1) 
{
    return argument2 * 0.5 * power(argument0, 4) + argument1;
}

return -argument2 * 0.5 * (power(argument0 - 2, 4) - 2) + argument1;