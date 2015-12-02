// The slightly more complex third character controls. The cases here are for which character is currently the leader.
if partyManager.leader == 2
{
    char = partyManager.leader-1;
    if(partyManager.character[char].x > self.x+32)
    {
        move_towards_point(partyManager.character[char].x , partyManager.character[char].y, 3);
    }
    else if(partyManager.character[char].y > self.y+32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y , 3);
    }

    else if(partyManager.character[char].x < self.x-32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
    }
    else if(partyManager.character[char].y < self.y-32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
    }
    else
    {
        speed = 0;
    }
}
else if partyManager.leader == 1
{
    char = partyManager.leader-1;
    if(partyManager.character[char].x > self.x+32)
    {
        move_towards_point(partyManager.character[char].x , partyManager.character[char].y, 3);
    }
    else if(partyManager.character[char].y > self.y+32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y , 3);
    }
    else if(partyManager.character[char].x < self.x-32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
    }
    else if(partyManager.character[char].y < self.y-32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
    }
    else
    {
        speed = 0;
    }
}
else if partyManager.leader == 0
{
    char = partyManager.leader+1;
    if(partyManager.character[char].x > self.x+32)
    {
        move_towards_point(partyManager.character[char].x , partyManager.character[char].y, 3);
    }
    else if(partyManager.character[char].y > self.y+32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y , 3);
    }
    else if(partyManager.character[char].x < self.x-32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
    }
    else if(partyManager.character[char].y < self.y-32)
    {
        move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
    }
    else
    {
        speed = 0;
    }
}
