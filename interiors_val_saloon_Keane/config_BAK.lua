Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

-- imap
Config.Smoke = false 
Config.HayBales = false 
Config.Unknown = false 
Config.Debris = false 
Config.Unknown2 = true 
 
-- ipl 
 

Config.ymaps = {
    {filename ="val_04__interior_val_saloon2_int_milo_.ymap", name="val_04__interior_val_saloon2_int_milo_", hash=GetHashKey("val_04__interior_val_saloon2_int_milo_"), trigger=false, description=""},
}

Config.Label = "Valentine Saloon"
Config.x = -309.288
Config.y = 808.374
Config.z = 119.187   
 
Config.door_hash_v1 = {
    ----Valentine 
}

Config.door_hash_v2 = {
    [3798786] = {3798786,-542955242,"p_door04x",-322.7286, 767.2573, 121.7059},  -- "Name": "Room 2A", // Valentine
    [3459074] = {3459074,-542955242,"p_door04x",-321.5221, 762.2973, 121.6815},  -- "Name": "Room 2B", // Valentine
}  


--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.WaitTimer = 1000
Config.FadeTimer = 2

Config.TeleportEnter_On = false 
Config.EnterRoom = {x = -306.673, y= 803.274, z=122.175, h = 000.00 } -- upstairs right  - room exist - structure interior missing 
Config.EnterRoom2B = {x = -312.446, y= 802.122, z=122.176, h = 000.00 }  -- upstairs left  - room exist - structure interior missing 

Config.EnterRoom1A = {x = -314.824, y= 817.653, z=122.176, h = 000.00 }  -- upstairs left - room exists and is furnished 
Config.EnterRoom1B = {x = -306.916, y= 818.918, z=122.176, h = 000.00 } -- upstairs right - room exist - structure interior missing

Config.EnterRoomA = {x = -314.757, y= 815.003, z=119.181, h = 000.00 }  -- downstairs saloon left -- room is only there 1/2
Config.EnterRoomB = {x = -306.495, y= 816.306, z=119.180, h = 000.00 }  -- downstairs saloon right -- room is only there 1/2

Config.TeleportExit_On = false 
Config.ExitRoom = {x = -306.695, y= 801.549, z=121.732 , h = 000.00 }
Config.ExitRoom2B = {x = -312.651, y= 801.041, z=121.730, h = 000.00 }  
 