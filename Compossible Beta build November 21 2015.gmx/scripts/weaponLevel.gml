/* This script serves as sort of a lookup table for weapons, their stats, and their level.
The table is a 2D array consisting of a primary index of the weapon's unique ID, and
secondary index of the weapon's particular stats. Let's go over an example:

Heron's basic pipe and its total level would look like this:
global.weapon[0,0]. Every secondary index goes in this order:
[0] Total Level
[1] Form Level
[2] Form experience
[3] Weight Level
[4] Weight Experience
[5] Size Level
[6] Size Experience
[7] Added Strength
[8] Weapon's Name

In the future, we may want to add special attributes to a weapon, so fortunately,
this particular method allows for growth as we perfect features.
*/

// Heron's Basic Pipe. Descriptions in case we forgot.
global.weapon[0,0] = 1; // Total Level
global.weapon[0,1] = 1; // Form Level
global.weapon[0,2] = 0; // Form Experience
global.weapon[0,3] = 1; // Weight Level
global.weapon[0,4] = 0; // Weight Experience
global.weapon[0,5] = 1; // Size Level
global.weapon[0,6] = 0; // Size Experience
global.weapon[0,7] = 1; // Added Strength (attack modifier)
global.weapon[0,8] = "Old Pipe"

// For example's sake, let's add another pipe. We'll call it strong pipe.
global.weapon[1,0] = 1;
global.weapon[1,1] = 1;
global.weapon[1,2] = 1;
global.weapon[1,3] = 1;
global.weapon[1,4] = 1;
