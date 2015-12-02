// Gives a set of variables to a teleport object, depending on the object's ID.

/*if(id == inst_2EBB9868) // Entrance to Heron's House.
{
    sendx=95;
    sendy=918;
    sendr=HeronHouse;    
}*/

if (id==inst_7E194F4C) // Entrance to Heron's parents' room.
{
    sendx=305;
    sendy=159;
    sendr=HeronHouse;
}
if (id==inst_3BC87448) // Exit from Heron's Parents' room.
{
    sendx=114;
    sendy=856;
    sendr=HeronHouse;
}
if (id==inst_C2A6FBEE) // Stairs to outside.
{
    sendx=718;
    sendy=551;
    sendr = Sector5_1;
}
if (id==inst_65A2094F) // Entrance to Heron's room.
{
    sendx=752;
    sendy=113;
    sendr=HeronHouse;
}
if (id==inst_3F9D0F27) // Exit from Heron's room.
{
    sendx=254;
    sendy=807;
    sendr=HeronHouse;
}
if (id==inst_E30D03CE) // Entrance to bathroom. 
{
    sendx=728;
    sendy=766;
    sendr=HeronHouse;
}
if (id==inst_3E784121) // Exit from bathroom.
{
    sendx=168;
    sendy=895;
    sendr=HeronHouse;
}

/// Sector 5 Tower Segment
// Entrance to Sector 5 Tower (From outside)
if (id==inst_F95E5F93)
{
    sendx=230;
    sendy=240;
    sendr=S5Lobby;
}

// Exit from Sector 5 Tower (to outside)
if (id==inst_ADA8844D)
{
    sendx=415;
    sendy=432;
    sendr=Sector5_2;
    Heron.facing = "D";
}
if (id == inst_C0633D9F) // Teleport from Lobby to Elevator
{
    sendx=767;
    sendy=726;
    sendr=S5Lobby;
    Heron.facing = "D";
}
if (id == inst_C1B3595C) // Teleport from elevator back to Lobby
{
    sendx=434;
    sendy=103;
    sendr=S5Lobby;
    Heron.facing = "D";
}
if(id == inst_3EFB4661) // Teleport from lobby elevator to Floor 20.
{
    sendx=944;
    sendy=575;
    sendr=S5_F20;
    Heron.facing = "D";
}

if (id == inst_859081FE) // From Floor 20 back to Lobby.
{
    sendx=430;
    sendy=106;
    sendr=S5Lobby;
    Heron.facing = "D";
}

//if (id == inst_9CE8722A) // From floor 20 to floor 40.
//{
 //   sendx=1919;
//    sendy=173;
 //   sendr=S5_F40;
  //  Heron.facing = "D";
//}

//if (id == inst_6CBE46BD) // From floor 40 back to Floor 20.
//{
 //   sendx=1919;
 //   sendy=173;
 //   sendr=S5_F20;
  //  Heron.facing = "D";
//}

//if (id == inst_31502AB7) // From floor 40 to cutscene elevator
//{
    /*sendx=211;
    sendy=179;
    sendr=S5_Elevator_Room;*/ // Cutscene shit has no place here. 
    //Floor 40 to boss room now.
  //  sendx=493;
  //  sendy=352;
  //  sendr=S5_F57_Boss;
  //  Heron.facing = "D";
//}

/*if (id == inst_8502DACC) // From cutscene elevator to boss room.
{
    sendx=493;
    sendy=352;
    sendr=S5_F57_Boss;
}/*
