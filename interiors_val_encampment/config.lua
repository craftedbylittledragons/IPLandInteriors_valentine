Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonencampment"
Config.Commands.stop = "turnoffencampment"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Encampment"
Config.x = -309.288
Config.y = 808.374
Config.z = 119.187  

Config.StockLevel = 1 
-- 0 = bare bones 
-- 1 = end of month (running low) 
-- 2 = mid month good stock 
-- 3 = fully stocked

Config.hiDef = true

Config.door_hash_v1 = {
    ----Valentine 
    "", ---  door hash
}

Config.door_hash_v2 = { 
    -- [5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
}  

Config.ymaps = {          
    {filename ="", name ="", parent_name="", hash="-892659042", trigger=false, description=""},    
    --{filename ="", name ="", parent_name="", hash="", trigger=false, description=""}, 
 }

Config.interiors = {    
    --{filename ="", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
}

Config.ytd = {    
    --{filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},    
}

Config.ydr = {
    --{filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},   
}

Config.yft = {
    --{filename =" ", name ="", parent_name=" ", hash="", trigger=true, description=""},        
}

Config.ytd_hidef = {
    --{filename =" ", name ="",  parent_name=" ", hash="", trigger=true, description=""}, 
}
 
--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.TeleportEnter_On = true 
Config.EnterStoreRoom = {x = -326.084, y = 805.856, z = 117.631, h = 359.987 }
Config.TeleportExit_On = true 
Config.ExitStoreRoom = {x = -326.378, y = 807.442, z = 117.644, h = 150.678 }
Config.WaitTimer = 1000
Config.FadeTimer = 2
