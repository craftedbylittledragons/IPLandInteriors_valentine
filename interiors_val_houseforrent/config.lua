Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnongreenhouse"
Config.Commands.stop = "turnoffgreenhouse"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Green House"
Config.x = -294.053
Config.y = 797.377
Config.z = 118.403  

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
     -- New Hanover -- Valentine -- Green House -- (Do Not Load Both(1/2)Building and Restaurant mainstreet - Pre-paint, almost completed stage(Help wanted sign)
    {filename ="", name ="", parent_name="Construction", hash=1081087978, trigger=false, description=""},    
    -- New Hanover -- Valentine -- Green House -- (Do Not Load Both(2/2)Building and Restaurant Mainstreet-Painted, completed stage. Keane's Rooms for Rent
    {filename ="", name ="", parent_name="Construction", hash=903666582, trigger=true, description=""},  

    -- New Hanover -- Valentine -- Green House -- Building boarded up 
    {filename ="", name ="", parent_name="BoardedUp", hash=282485265, trigger=false, description=""},  
    
    -- New Hanover -- Valentine -- Green House -- Building Lamp
    {filename ="", name ="", parent_name="Lamp", hash=637874199, trigger=true, description=""},   
    
    --true match: j_09__trees_0 31880119 -297.67965698242 819.28039550782 123.32624816894            
    {filename ="", name ="", parent_name="Tree1", hash=31880119, trigger=true, description=""},  
    -- 2. New Hanover -- Valentine -- Green House -- Exterior Trees and Flowers 1(Run 2 and 3 together)                
    {filename ="", name ="", parent_name="Tree2", hash=-1521525254, trigger=true, description=""}, 
    -- 2. New Hanover -- Valentine -- Green House -- Exterior Trees and Flowers 1(Run 2 and 3 together)                
    {filename ="", name ="", parent_name="Tree3", hash=-761186147, trigger=true, description=""}, 
    
    {filename ="", name ="", parent_name="Restaurant", hash=-1892595931, trigger=true, description=""},     
         
    {filename ="", name ="", parent_name="Chair", hash=-1744253204, trigger=true, description=""},    
             
    {filename ="", name ="", parent_name="Unknown", hash=-1781246069, trigger=false, description=""},
    -- something relating to green house in valentine
    -- true match: -1781246069 scottybeammeup -292.50619506836 801.41845703125 118.86724090576   

    {filename ="", name ="", parent_name="Unknown", hash=1186533019, trigger=false, description=""},    
    -- something relating to green house in valentine
    -- true match:             1186533019      -292.74053955078        783.86340332032 118.87322998046   
 }

Config.interiors = {    
    {filename ="val_03_room4rent_enlssum_dtls", name ="", parent_name="RentSign", hash="", trigger=true, description=""}, 
    {filename ="val_03_room4rent_enlssum", name ="", parent_name="RentSign", hash="", trigger=true, description=""},
    {filename ="val_03_redrest_endlssum", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="val_03_rst_endlssum_em_hd", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="val_03_rst_endlssum_em_hd+hidr", name ="", parent_name="", hash="", trigger=true, description=""},       
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
