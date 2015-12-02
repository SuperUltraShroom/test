// This script allows a room to set its own joining rooms, to save on "warp" objects.
// If the player walks off the side of the scren in the direction that there is another room
// It automatically warps.
// You can use -1 to say that there is no room in that direction.
// Formatted as: set_joining_rooms(north, south, west, east)

global.northroom=argument0;
global.southroom=argument1;
global.westroom=argument2;
global.eastroom=argument3;
