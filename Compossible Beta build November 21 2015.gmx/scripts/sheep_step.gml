char = partyManager.leader;

// The character who follows the leader directly obeys this code, as long as we're not in battle.
// Basically, just follow the leader.
if(partyManager.character[char].x > self.x+32){
move_towards_point(partyManager.character[char].x , partyManager.character[char].y, 3);
}
else if(partyManager.character[char].y > self.y+32){
move_towards_point(partyManager.character[char].x, partyManager.character[char].y , 3);
}

else if(partyManager.character[char].x < self.x-32){
move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
}
else if(partyManager.character[char].y < self.y-32){
move_towards_point(partyManager.character[char].x, partyManager.character[char].y, 3);
}
else
{
    speed = 0;
}
