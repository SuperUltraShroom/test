#define do_damage
// Argument0 is the enemy's defense.
damage = 0;
levelUpManager_Heron.attackValue += Heron.attack;
dispDamage = Heron.attack - argument0;
if dispDamage <= 0
{
    dispDamage = 0;
    global.damage = 0;
    damage += 0;
    
}
else
{
    damage += dispDamage;
    global.damage = dispDamage;
    
}
return damage;

#define enemyDoDamage
// Argument0 is the enemy's attack.
// Argument1 is Heron's defense.
char = partyManager.leader;
damage = 0;
dispDamage = argument0 - argument1;
if dispDamage <= 0
{
    dispDamage = 0;
    global.enemyDamage = 0;
    damage += 0;
    
}
else
{
    damage += dispDamage;
    global.enemyDamage = dispDamage;
    levelUpManager_Heron.damageValue += global.enemyDamage;
    levelUpManager_Heron.damageDefValue += global.enemyDamage;
    
}
return damage;