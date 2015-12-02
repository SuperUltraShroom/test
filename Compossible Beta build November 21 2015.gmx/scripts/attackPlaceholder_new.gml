char = partyManager.leader;
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

