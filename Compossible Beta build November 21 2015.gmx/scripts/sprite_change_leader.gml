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

if (partyManager.character[char].justDied == true)
{
    instance_create(partyManager.character[char].x, partyManager.character[char].y, heronDieObj);
    partyManager.character[char].justDied = false;
    
}
}
