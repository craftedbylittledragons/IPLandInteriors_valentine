Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

-- ipl / imap
Config.Sign = true 

-- interiors
Config.Posts = true  

Config.Label = "Valentine Saloon"
Config.x = -309.288
Config.y = 808.374
Config.z = 119.187   
 

local entity = 3798786
local hash_code = -542955242
local obj_name = "p_door04x"
Config.door_hash_v1 = {
    ----Valentine 
    entity,
}

Config.door_hash_v2 = {
--[entity] ={entity,hash_code,obj_name,-322.7286, 767.2573, 121.7059},  -- "Name": "Room 2A", // Valentine 
}  

--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.WaitTimer = 1000
Config.FadeTimer = 2

Config.TeleportEnter_On = true 
Config.EnterRoom = {x = -306.673, y= 803.274, z=122.175, h = 000.00 } -- upstairs right  - room exist - structure interior missing   

Config.TeleportExit_On = true 
Config.ExitRoom = {x = -306.695, y= 801.549, z=121.732 , h = 000.00 } 
 