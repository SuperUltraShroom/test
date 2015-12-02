#define detect_weapons
// Does math based on the direction the NPC is facing.
// If the NPC is facing a certain direction and the player is holding a weapon, the NPC reacts.
// Otherwise, the NPC just sort of spins in place.

// As usual, we're gonna declare the party leader. They're the one who counts for weapons.
char = partyManager.leader;
// We also need the caller's xand y location.

if (collision_circle(argument0,argument1,40,generic_mainChar,false,true))
{
    if (partyManager.character[char].weapons = true)
    {
        switch (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) + 22.5) div 45 
        {
            case 8:
                case 0:
                    dir = "R";
                    break;
                case 1:
                    dir = "UDR";
                    break;
                case 2:
                    dir = "U";
                    break;
                case 3:
                    dir = "UDL";
                    break;
                case 4:
                    dir = "L";
                    break;
                case 5:
                    dir = "DDL";
                    break;
                case 6:
                    dir = "D";
                    break;
                case 7:
                    dir = "DDR";
                    break;
        }
    }
}

#define detect_player
/// VIRTUALLY THE SAME CODE AS DETECT WEAPONS WITH THE MINOR DIFFERENCE OF NOT CALLING AN IF FOR WEAPONS CHECK.
/// CAN YOU BELIEVE THE FUCKING LAZINESS HERE?

// Does math based on the direction the NPC is facing.
// As usual, we're gonna declare the party leader.
char = partyManager.leader;

// We also need the caller's xand y location Those are our arguments.


    switch (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) + 22.5) div 45 
    {
        case 8:
            case 0:
                dir = "R";
                break;
            case 1:
                dir = "UDR";
                break;
            case 2:
                dir = "U";
                break;
            case 3:
                dir = "UDL";
                break;
            case 4:
                dir = "L";
                break;
            case 5:
                dir = "DDL";
                break;
            case 6:
                dir = "D";
                break;
            case 7:
                dir = "DDR";
                break;
    }

#define detect_depth
/// VIRTUALLY THE SAME CODE AS DETECT WEAPONS WITH THE MINOR DIFFERENCE OF NOT CALLING AN IF FOR WEAPONS CHECK.
/// CAN YOU BELIEVE THE FUCKING LAZINESS HERE?

// Does math based on the direction the NPC is facing.
// As usual, we're gonna declare the party leader.
char = partyManager.leader;
obj = argument2;
// We also need the caller's xand y location Those are our arguments.


    if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) >= 0) 
    {
        if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) <= 90)
        {
            obj.depth = Heron.y+1;
            obj.image_alpha = 1;        
        }
    }
    if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) <= 180)
    {
        if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) > 90)
        {
            obj.depth = -100000
            obj.image_alpha = .5;
        }    
    }
    if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) <= 270)
    {
        if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) > 180)
        {
            obj.depth = -100000
            obj.image_alpha = .5;
        }
    }
    if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) <= 360)
    {
        if (point_direction(argument0, argument1, generic_mainChar.x, generic_mainChar.y) > 270)
        {
            obj.depth = Heron.y+1;
            obj.image_alpha = 1;  
        }    
    }