if !instance_exists(cutsceneController)
{
char = partyManager.leader; // Set a variable to save some space.

if (room!=StartMenu)
{
if !partyManager.character[char].dead
{
//Keyboard Key variables.
var down = false; up = false; left = false; right = false; updiagLeft = false; updiagRight = false; downdiagRight = false; downdiagLeft = false; sprint = false

/*
Check keys and set the variables accordingly. The opposite direction's key kills the movement entirely to
avoid Super Mario Bros. style glitches.
*/

down=(keyboard_check(ord('S')) && !keyboard_check(ord('W')));
up=(keyboard_check(ord('W')) && !keyboard_check(ord('S')));
left=(keyboard_check(ord('A')) && !keyboard_check(ord('D')));
right=(keyboard_check(ord('D')) && !keyboard_check(ord('A')));
updiagLeft = (((keyboard_check(ord('W'))) && (keyboard_check(ord('A')))) && !((keyboard_check(ord('S'))) && (keyboard_check(ord('D')))));
updiagRight = (((keyboard_check(ord('W'))) && (keyboard_check(ord('D')))) && !((keyboard_check(ord('S'))) && (keyboard_check(ord('A')))));
downdiagLeft = (((keyboard_check(ord('S'))) && (keyboard_check(ord('A')))) && !((keyboard_check(ord('W'))) && (keyboard_check(ord('A')))));
downdiagRight = (((keyboard_check(ord('S'))) && (keyboard_check(ord('D')))) && !((keyboard_check(ord('W'))) && (keyboard_check(ord('D')))));
moveSpeed = partyManager.character[char].walkSpeed //this is here just in case

/* And of course, that^ compliments this movement code. Every direction scans a set amount of X or Y in the
direction(s) you're moving. If it detects a solid object, you get as close as possible without actually
touching, like some kind of silly kindergarten game. This prevents sticking to shit.
*/

//Set up a temp variable for the last direction a character was facing.
tempfacing = partyManager.character[char].facing;

// Start defining for the character if they're moving.
if (down || up || left || right || updiagLeft || updiagRight || downdiagLeft || downdiagRight)
{
    partyManager.character[char].moving = true;
}
else // The character isn't moving.
{
    partyManager.character[char].moving = false;
}

//Here's where we check if we're running or not. This saves a ton of lines compared to my implementation.
if (generic_mainChar.run = true)
{
    moveSpeed = partyManager.character[char].runSpeed;
}
else
{
    moveSpeed = partyManager.character[char].walkSpeed;
}
if ( partyManager.character[char].playingAttack = false)
{
//Movement for down
if (down)
{
    partyManager.character[char].facing = "D";
    if (place_free(partyManager.character[char].x,partyManager.character[char].y+moveSpeed))
    {
        partyManager.character[char].y+=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x-6,partyManager.character[char].y+moveSpeed) && !left && !right)
    {
        partyManager.character[char].x-=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x+6,partyManager.character[char].y+moveSpeed) && !left && !right)
    {
        partyManager.character[char].x+=moveSpeed;
    }
}
    
//Upward movement
if (up)
{
    partyManager.character[char].facing = "U";
    if (place_free(partyManager.character[char].x,partyManager.character[char].y-moveSpeed))
    {
        partyManager.character[char].y-=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x-6,partyManager.character[char].y-moveSpeed) && !left && !right)
    {
        partyManager.character[char]. x-=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x+6,partyManager.character[char].y-moveSpeed) && !left && !right)
    {
        partyManager.character[char].x+=moveSpeed;
    }
}

//Going left.
if (left)
{
    partyManager.character[char].facing = "L";
    if (place_free(partyManager.character[char].x-moveSpeed,partyManager.character[char].y))
    {
        partyManager.character[char].x-=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x-moveSpeed,partyManager.character[char].y-6) && !down && !up)
    {
        partyManager.character[char].y-=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x-moveSpeed,partyManager.character[char].y+6) && !down && !up)
    {
    partyManager.character[char].y+=moveSpeed;
    }
}
   
//Going right, too.
if (right)
{
    partyManager.character[char].facing = "R";
    if (place_free(partyManager.character[char].x+moveSpeed,partyManager.character[char].y))
    {
        partyManager.character[char].x+=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x+moveSpeed,partyManager.character[char].y-6) && !down && !up )
    {
        partyManager.character[char].y-=moveSpeed;
    }
    else if (place_free(partyManager.character[char].x+moveSpeed,partyManager.character[char].y+6) && !down && !up)
    {
        partyManager.character[char].y+=moveSpeed;
    }
}
}

// The diagonals are purely to support diagonal sprites.
if (downdiagRight)
{
    partyManager.character[char].facing = "DDR";
}
if (downdiagLeft)
{
    partyManager.character[char].facing = "DDL";
}
if (updiagRight)
{
    partyManager.character[char].facing = "UDR";
}
if (updiagLeft)
{
    partyManager.character[char].facing = "UDL";
}
}
}
else{}
}
