Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.loaded = false 

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonkeane"
Config.Commands.stop = "turnoffkeane"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Keane Saloon"
Config.x = -309.288
Config.y = 808.374
Config.z = 119.187    
 
Config.StockLevel = 1

Config.hiDef = true

Config.door_hash_v1 = { 
    "", ---  door hash
}

Config.door_hash_v2 = {
--[[
[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--]] 
}  
 
Config.ymaps = {      
    {filename ="val_03__interior_val_doctor_int_milo_", name ="", parent_name="", hash="", trigger=true, description=""},    
     
}
  
Config.interiors = {    
    {filename ="val_doctor_int", name ="", parent_name="", hash="", trigger=true, description=""}, 
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},  
}
 

Config.ytd = {    
    {filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},    
}

Config.ydr = {
    {filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},        
}

Config.yft = {
    {filename =" ", name ="", parent_name=" ", hash="", trigger=true, description=""},        
}

Config.ytd_hidef = {
    {filename =" ", name ="",  parent_name=" ", hash="", trigger=true, description=""}, 
}


Config.loaded = true 