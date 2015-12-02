enemy = asset_get_index(string(argument0))
char = partyManager.leader;

if partyManager.character[char].attackfacing = "D"
{
    if place_free(enemy.x, enemy.y+10+argument1)
    {
        enemy.y+=argument1;
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "U"
{
    if place_free(enemy.x, enemy.y-10-argument1)
    {
        enemy.y-=argument1;
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "L"
{
    if place_free(enemy.x-10-argument1, enemy.y)
    {
        enemy.x-=argument1;
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "R"
{
    if place_free(enemy.x+10+argument1, enemy.y)
    {
        enemy.x+=argument1;
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "DDL"
{
    if place_free(enemy.x-10-argument1, enemy.y+10+argument1)
    {
        enemy.y+=argument1;
        enemy.x-=argument1;
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "DDR"
{
    if place_free(enemy.x+10+argument1, enemy.y+10+argument1)
    {
        enemy.y+=argument1;
        enemy.x+=argument1
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "UDL"
{
    if place_free(enemy.x-10-argument1, enemy.y-10-argument1)
    {
        enemy.y-=argument1;
        enemy.x-=argument1;
    }
    else
    {
    }
}

if partyManager.character[char].attackfacing = "UDR"
{
    if place_free(enemy.x+10+argument1, enemy.y-10-argument1)
    {
        enemy.y-=argument1;
        enemy.x+=argument1;
    }
    else
    {
    }
}
