Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonsheriff"
Config.Commands.stop = "turnoffsheriff"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Sheriff"
Config.x = -277.183
Config.y = 806.583
Config.z = 119.581   
 
Config.StockLevel = 1

Config.hiDef = true

Config.door_hash_v1 = {
    2347778,  --p_door_val_jail_cell01x
    2525442,  --p_door_val_jail_cell01x
    2671618,  --p_door_val_jail_cell01x
    2316546,  --p_door_val_jail_cell02x
    3374594,  --p_door_val_jail01x
    3705602,  --p_door_val_jail02x
    "", ---  door hash
}

Config.door_hash_v2 = {
--[[
[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--]] 
}  
 
 
Config.ymaps = {      
    {filename ="val_03__interior_val_jail_int_milo_", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_03_props_lockdown_jail", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_03_default_jail", name ="", parent_name="", hash="", trigger=true, description=""}, 

     -- New Hanover -- Valentine -- Sheriffs Office -- Bounty Board    
    {filename ="", name ="", parent_name="BountyBoard", hash=952801839, trigger=true, description=""},    
    -- New Hanover -- Valentine -- Sheriffs Office -- Barrels on Step  
    {filename ="", name ="", parent_name="Barrels", hash=1804593020, trigger=false, description=""}, 
    -- New Hanover -- Valentine -- Sheriffs Office -- Boarded up   
    {filename ="", name ="", parent_name="BoardedUp", hash=-1301569116, trigger=false, description=""}, 

    -- New Hanover -- Valentine -- Sheriffs Office -- Crumbled Wall parts...
    {filename ="", name ="", parent_name="", hash=774477221, trigger=false, description=""},  
    -- New Hanover -- Valentine -- Sheriffs Office -- Outer wall   
    {filename ="", name ="", parent_name="", hash=1097534152, trigger=true, description=""},    
    -- New Hanover -- Valentine -- Prison Break?    
    {filename ="", name ="", parent_name="", hash=696143352, trigger=false, description=""},    
    -- something relating to Val Sheriff Office
    {filename ="", name ="", parent_name="", hash=1325716092, trigger=false, description=""}, 
        
    --{filename ="", name ="", parent_name="", hash="", trigger=false, description=""},    
}
  
Config.interiors = {    
    {filename ="val_jail_int", name ="", parent_name="val_jail_int", hash="", trigger=true, description=""}, 
    {filename ="val_jail_int_walla", name ="", parent_name="val_jail_int", level="1", hash="", trigger=true, description=""}, 
    {filename ="val_jail_int_wallb", name ="", parent_name="val_jail_int",  level="1", hash="", trigger=true, description=""}, 
  --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},  
}
 
 
Config.ytd = {    
    --{filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},    
}

Config.ydr = {
    {filename ="p_door_val_jail_lckd_1", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_jail_cell02x", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_jail_bent01x", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_jail01x", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},     
    --{filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},        
}

Config.yft = {
    {filename ="p_door_val_jail_cell01x", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_jail02x", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},     
    --{filename =" ", name ="", parent_name=" ", hash="", trigger=true, description=""},        
}

Config.ytd_hidef = {
    {filename ="p_door_val_jail_cell02x+hidr", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_jail02x+hifr", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_jail01x+hidr", name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    --{filename =" ", name ="",  parent_name=" ", hash="", trigger=true, description=""}, 
}



Config.loaded = true