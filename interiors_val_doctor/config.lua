Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server
 
Config.BoardedUp = false  
Config.Supplies = 1 -- options 1  or 2  or 0 (None)

Config.Label = "Valentine Doctor"
Config.x = -309.288
Config.y = 808.374
Config.z = 119.187   
 
Config.door_hash_v1 = {
    ----Valentine 
}

Config.door_hash_v2 = {
    --[[
    [3798786] = {3798786,-542955242,"p_door04x",-322.7286, 767.2573, 121.7059},  -- "Name": "Room 2A", // Valentine
    [3459074] = {3459074,-542955242,"p_door04x",-321.5221, 762.2973, 121.6815},  -- "Name": "Room 2B", // Valentine
    --]] -- multipel doors in doctors office that need to be unlocked
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
Config.EnterRoom = {x = -323.707, 767.1247, 121.6827, h = 000.00 }
Config.EnterRoom2B = {x = -322.74, 762.0117, 120.6835, h = 000.00 }

Config.TeleportExit_On = false
Config.ExitRoom = {x = -321.8341, 767.2936, 121.6827 , h = 000.00 }
Config.ExitRoom2B = {x = -321.2203, 762.3177, 120.6814, h = 000.00 }
  