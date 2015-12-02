char = partyManager.leader;
if (!partyManager.character[char].dead)
{
if (partyManager.character[char].weapons == false) // So you don't have a weapon in your hand...
{
    if (!partyManager.character[char].moving) // If you're not moving, you're idle, without weapons. Call that sprite.
    {
        partyManager.character[char].sprite_index = asset_get_index(partyManager.character[char].name+"Idle"+partyManager.character[char].facing);
    }
       else if (partyManager.character[char].moving) // So you are moving. The question is now: are you running?
    {
        if (partyManager.character[char].run)
        {
            partyManager.character[char].sprite_index = asset_get_index(partyManager.character[char].name+"Run"+partyManager.character[char].facing);
        }
        else
        {
            partyManager.character[char].sprite_index = asset_get_index(partyManager.character[char].name+"Walk"+partyManager.character[char].facing);
        }
    }
    else if (psionics) // If the psionics menu is open, you're idle in the current build.
    {
        partyManager.character[char].sprite_index = asset_get_index(partyManager.character[char].name+"Idle"+partyManager.character[char].facing);
    }
}
if (partyManager.character[char].weapons == true && partyManager.character[char].playingAttack = false ) // So you are holding your weapon... (and not attacking)
{
    if (!partyManager.character[char].moving) // And you're just standing there like a jackass.
    {
        partyManager.character[char].sprite_index = asset_get_index(partyManager.character[char].name+"Pipe"+partyManager.character[char].facing);
    }
    if (partyManager.character[char].moving) // So now you're going somewhere.
    {
        partyManager.character[char].sprite_index = asset_get_index(partyManager.character[char].name+"PipeWalk"+partyManager.character[char].facing);
    }
}

if (partyManager.character[char] = Heron && (Heron.attacking == true or Heron.runningattack == true) && !instance_exists(asset_get_index("HeronAttackObj"+Heron.attackfacing))) //This is Heron's attack block, so we need to establish that we're heron, we're clear to attack and not already attacking
{
 switch (Heron.facing) //We're looking at the possible values the facing variable can have
 {
    case "U":
         instance_create(Heron.x, Heron.y-16, HeronAttackObjU); //Create a hitbox at the player character's coordinates. These are WIP
         partyManager.character[char].attacking = false; //Once the attack hitbox is created we set this to false so we can attack again.
         partyManager.character[char].runningattack = false; //This should be temporary, but for now is basically interchangeable with attacking.
         Heron.attackfacing = "U";//Recording the direction heron is attacking in for knockback related purposes.
         break 
    case "D":
         instance_create(Heron.x,Heron.y+16, HeronAttackObjD);//Placement is WIP
         partyManager.character[char].attacking = false;
         partyManager.character[char].runningattack = false;
         Heron.attackfacing = "D";
         break
    case "L":
         instance_create(Heron.x-20,Heron.y-15, HeronAttackObjL);//Placement is WIP
         partyManager.character[char].attacking = false;
         partyManager.character[char].runningattack = false;
         Heron.attackfacing = "L";
         break
    case "R":
         instance_create(Heron.x+20,Heron.y-15, HeronAttackObjR);//Placement is WIP
         partyManager.character[char].attacking = false;
         partyManager.character[char].runningattack = false;
         Heron.attackfacing = "R";
         break
    case "DDR":
         instance_create(Heron.x,Heron.y, HeronAttackObjDDR);//Placement is WIP
         partyManager.character[char].attacking = false;
         partyManager.character[char].runningattack = false;
         Heron.attackfacing = "DDR";
         break
    case "DDL":
         instance_create(Heron.x,Heron.y, HeronAttackObjDDL);//Placement is WIP
         partyManager.character[char].attacking = false;
         partyManager.character[char].runningattack = false;
         Heron.attackfacing = "DDL";
         break
    default: 
         instance_create(partyManager.character[char].x, partyManager.character[char].y, HeronAttackObjD);//If heron.facing has a weird value, his attack will default to this.
         partyManager.character[char].attacking = false;
         partyManager.character[char].runningattack = false;
         Heron.attackfacing = "D";
         break
 }

}

if (partyManager.character[char].justDied == true)
{
    instance_create(partyManager.character[char].x, partyManager.character[char].y, heronDieObj);
    partyManager.character[char].justDied = false;
    
}
}
