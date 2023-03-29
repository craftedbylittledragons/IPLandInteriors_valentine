Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnongenstore"
Config.Commands.stop = "turnoffgenstore"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine General Store"
Config.x = -323.411
Config.y = 801.078
Config.z = 117.631   

Config.hiDef = true

Config.door_hash_v1 = {
    "", ---  door hash
}

Config.door_hash_v2 = {
--[[
[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--]] 
}  

Config.ymap = {     
    {filename ="val_03__interior_val_genstore_milo_", name ="", parent_name="", hash="", trigger=true, description=""},    

    -- New Hanover -- Valentine -- Green House -- General Store -- Boarded up?  
    {filename ="", name ="", parent_name="BoardUp", hash=56708243, trigger=false, description=""},     
    -- New Hanover -- Valentine -- General Store -- Boarded Up    
    {filename ="", name ="", parent_name="BoardUp", hash=1228600352, trigger=false, description=""},   

    -- New Hanover -- Valentine -- General Store -- Fruit in front?
    {filename ="", name ="", parent_name="Fruit", hash=1573766063, trigger=true, description=""},    

    -- New Hanover -- Valentine -- General Store -- Something Regarding It
    -- increases the ipl flicker in the genstore, unsure what it is yet. I don't see any changes or clear overlays
    {filename ="", name ="", parent_name="Unknown", hash=-554932707, trigger=false, description=""},    

    -- New Hanover -- Valentine -- General Store -- Closed Sign on Door 
    {filename ="", name ="", parent_name="ClosedSign", hash=406334892, trigger=false, description=""},   
    
    -- New Hanover -- Valentine -- General Store -- Sign in Front
    {filename ="", name ="", parent_name="DoorSign", hash=135886022, trigger=true, description=""}, 
    
    -- New Hanover -- Valentine -- Green House -- General Store -- Saloon Mainstreet -- Supplies/Boxes in Front 
    {filename ="", name ="", parent_name="Boxes", hash=2095116685, trigger=false, description=""},  
    
    --{filename ="", name ="", parent_name="", hash="", trigger=false, description=""},    
 }

Config.interiors = {    
    {filename ="val_genstore", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="val_genstore_night_light", name ="", parent_name="", hash="", trigger=true, description=""}, 
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
