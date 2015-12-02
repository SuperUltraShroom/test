#define zahlzeit_pattern
//Zahlzeit's boss battle pattern.

//Let's start it out with several collision circles to determine some variables.

// These are pretty self explanitory. 
atLongRange = false;
atCloseRange = false;
inRange = false;
outOfRange = true;
// First, the furthest range one. 
if collision_circle(x,y,150,Heron,false,true)
{
    outOfRange = false;
    atLongRange = true;
    inRange = true;
    atCloseRange = false;
    if collision_circle(x,y,50,Heron,false,true)
    {
    outOfRange = false;
    inRange = true;
    atCloseRange = true;
    atLongRange = false;
    }
}
else
{
    outOfRange = true;
    inRange = false;
    atCloseRange = false;
    atLongRange = false;
}

// Now that range is determined, let's figure out what we need to do.

// First, if the target is out of range, move towards it.

if (outOfRange)
{
    // Well, we're out of range, so we need to run towards Heron. Zahlzeit ain't no slouch!
    move_towards_point(Heron.x,Heron.y,6)
}
// So what do we do if Heron's in range?
else if (inRange)
{
    // Here's where we get slightly complicated.
    // First, stop pursuing Heron.
    speed = 0;
    // First, let's consider what to do when we're at long range.
    if (atLongRange)
    {
        //Force an approach if the player is trying to run away.
        if (Heron.facing == ZahlzeitBoss.dir || Heron.facing == "L" || Heron.facing == "R")
        {
            // Shoot at/around Heron until he enters close range.
            if !instance_exists(Zahlzeit_Bullet)
            {    
                instance_create(x, y, Zahlzeit_Bullet);
                Zahlzeit_Bullet.fireAgain = false;
            }
            if instance_exists(Zahlzeit_Bullet)
            {
                if (Zahlzeit_Bullet.fireAgain)
                {
                    if (ZahlzeitBoss.rand > 5)
                    {
                        instance_create(x,y,BouncyBullet);
                    }
                    else
                    {
                        instance_create(x,y,Zahlzeit_Bullet);
                        Zahlzeit_Bullet.fireAgain = false;
                    }
                }
                else
                {}
            }
        }
    }
    else if (atCloseRange)
    {
        // Heron is within punching distance now. A solid hit with the metal arm will knock Heron back into long range.
        // We'll disable atLongRange to ensure no shooting at him.
        atLongRange = false;
        // So, aim a punch at Heron. We'll just randomly decide which to use - the combo-able standard punch/kick, or the heavy arm.
    }
    else
    {
        // Heron must be out of range if he isn't in range, right?
        outOfRange = true;
        inRange = false;
        atCloseRange = false;
        atLongRange = false;
    }
}
else // So Heron isn't in range and he isn't out of range? The hell is that? Let's treat it as if he's out of range.
{
    outOfRange = true;
    inRange = false;
    atCloseRange = false;
    atLongRange = false;
}

#define scr_zahlzeit_faceHeron
// Make sure that Zahlzeit is always looking in Heron's direction.
// As usual, we're gonna declare the party leader.
char = partyManager.leader;

// We also need the caller's xand y location Those are our arguments.

if (collision_circle(argument0,argument1,150,generic_mainChar,false,true))
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