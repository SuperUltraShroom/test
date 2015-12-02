#define dropItem
/* ARGUMENTS:
argument0: The index of the item to be dropped.
argument1: The index of an array to store the items to be dropped.

Drop an item from your inventory to the position that you're standing.
This function is called from inventorySelect_press<Space>, and gets its argument from there.
*/

//Time to drop the item. Dropping an item from a start menu that exists in another room
// is a little complex. To be able to drop multiple items in the same go, we'll need an array of
// the items we're dropping.
global.itemToDrop = Inventory.slotItems[argument0];
global.itemDropArray[argument1] = global.itemToDrop;
//Now let's tell the game that it's time to drop an item.
global.spawnItem = true;
//Now we'll kill it from the inventory.
Inventory.slotItems[argument0] = 0;
Inventory.slotImages[argument0] = 0;


#define addItem
index = argument0;
//Start looping. It will loop through all the slots until it has found an empty slot or gone over the maximum.
for(i = 1 ; i <= Inventory.numberOfSlots ; i += 1) 
{

    //Check if the current slot is empty, and if so, add the object.
    if(Inventory.slotItems[i] = 0)
    {
        Inventory.slotItems[i] = object_index; // Set the item.
        Inventory.slotImages[i] = index; // Set the image.
        exit; // Exit the script, since it has found a slot.
    }
}