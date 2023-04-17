Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnondoctor"
Config.Commands.stop = "turnoffdoctor"

Config.Teleporter = {}
Config.Teleporter.trigger = false 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Doctor"
Config.x = -287.3733
Config.y = 805.1980
Config.z = 119.4356   
 
Config.StockLevel = 1

Config.hiDef = true

Config.door_hash_v1 = {
    951298,
    1270530,
    1756674,
    2172162,
    "", ---  door hash
}

Config.door_hash_v2 = {
--[[
[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--]] 
}  
 
Config.ymaps = {      
    {filename ="val_03__interior_val_doctor_int_milo_", name ="", parent_name="", hash="", trigger=true, description=""},    
    -- New Hanover -- Valentine -- Doctors Office -- Boarded up 
    {filename ="", name ="", parent_name="BoardUp", hash=-981203673, trigger=false, description=""},     
    --- Fixed Chair outside Valentine Doctor's Office 
    {filename ="", name ="", parent_name="Chair", hash=-1049500949, trigger=true, description=""},   
    -- Broken Chair outside Valentine Doctor's Office 
    {filename ="", name ="", parent_name="Chair", hash=-2009766528, trigger=false, description=""}, 
    --{filename ="", name ="", parent_name="", hash="", trigger=false, description=""},    
}
  
Config.interiors = {    
    {filename ="val_doctor_int", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="_s_candyBag01x_red_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""}, 
    {filename ="_s_inv_CocaineGum01x_dressing", name ="", parent_name="StockLevel",  level="1", hash="", trigger=true, description=""}, 
    {filename ="_s_inv_CocaineGum01x_group", name ="", parent_name="StockLevel", level="1",  hash="", trigger=true, description=""}, 
    {filename ="_s_inv_medicine01x_dressing", name ="", parent_name="StockLevel", level="1",  hash="", trigger=true, description=""}, 
    {filename ="_s_inv_medicine01x_group", name ="", parent_name="StockLevel", level="1",  hash="", trigger=true, description=""}, 
    {filename ="_s_inv_tabacco01x_dressing", name ="", parent_name="StockLevel", level="1",  hash="", trigger=true, description=""}, 
    {filename ="_s_inv_tabacco01x_group", name ="", parent_name="StockLevel", level="1",  hash="", trigger=true, description=""}, 
    {filename ="_s_inv_tonic01x_group", name ="", parent_name="StockLevel", level="1",  hash="", trigger=true, description=""},  
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
