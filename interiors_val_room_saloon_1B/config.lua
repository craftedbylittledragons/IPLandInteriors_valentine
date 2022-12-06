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
 

Config.EnterRoom1B = {x = -306.916, y= 818.918, z=122.176, h = 000.00 } -- upstairs right - room exist - structure interior missing

local entity = 0
local hash_code = -542955242
local obj_name = "p_door04x"
Config.door_hash_v1 = {
    ----Valentine 
    entity,
}

Config.door_hash_v2 = {
--[entity] ={entity,hash_code,obj_name,-306.916, 818.918, 122.176},  
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
Config.EnterRoom = {x = -306.916, y= 818.918, z=122.176,  h = 000.00 }  -- upstairs left - room exists and is furnished 

Config.TeleportExit_On = true 
Config.ExitRoom = {x = -306.916, y= 818.918, z=122.176, h = 000.00 } --- needs coords
 