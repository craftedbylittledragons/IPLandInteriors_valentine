Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.loaded = false

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonsouthcabin"
Config.Commands.stop = "turnoffsouthcabin"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine South Cabin"
Config.x = -445.177
Config.y = 488.790
Config.z = 97.836   
 
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
     -- New Hanover -- Valentine  -- house shell finished, inside unfinished   
    {filename ="", name ="", parent_name="Construction", hash=-1926787493, trigger=true, description=""},        
    -- New Hanover -- Valentine -- house shell 1/2 complete 2 under construction 
    {filename ="", name ="", parent_name="Construction", hash=1552753100, trigger=false, description=""},  
    -- New Hanover -- Valentine -- house 3 begin constructions
    {filename ="", name ="", parent_name="Construction", hash=-590227673, trigger=false, description=""}, 
    -- New Hanover -- Valentine --- floor and wall framing of construction    
    {filename ="", name ="", parent_name="Construction", hash=1471226731, trigger=false, description=""}, 
    -- New Hanover -- Valentine --- floor stage of constructions        
    {filename ="", name ="", parent_name="Construction", hash=872406077, trigger=false, description=""}, 
 
    -- New Hanover -- Valentine --- something   House interior or wagons?  
    {filename ="", name ="", parent_name="Materials", hash=-1149736196, trigger=true, description=""},     
    -- New Hanover -- Valentine --- house south of valentine interior  -- under construction 
    {filename ="", name ="", parent_name="Materials", hash=-2040493861, trigger=false, description=""},  
    -- New Hanover -- Valentine --- saw horses outside   
    {filename ="", name ="", parent_name="Materials", hash=-1490939730, trigger=false, description=""},      
    -- New Hanover -- Valentine --- outside construction materials  
    {filename ="", name ="", parent_name="Materials", hash=-1382265257, trigger=false, description=""}, 
    -- New Hanover -- Valentine --- planks outside 
    {filename ="", name ="", parent_name="Materials", hash=1987335384, trigger=false, description=""}, 
    -- New Hanover -- Valentine --- boxes outside house 
    {filename ="", name ="", parent_name="Materials", hash=-1593160175, trigger=false, description=""}, 
    -- New Hanover -- Valentine --- green wagon with constructions materials   
    {filename ="", name ="", parent_name="Materials", hash=1867048850, trigger=false, description=""},   
  
    -- New Hanover -- Valentine --- Crops at the house south of valentine -433.32, 505.72, 98.01 
    {filename ="", name ="", parent_name="Crops", hash=1823159188, trigger=true, description=""},  
    -- New Hanover -- Valentine --- fence
    {filename ="", name ="", parent_name="Fences", hash=-442857872, trigger=false, description=""}, 
    -- New Hanover -- Valentine --- hitching post
    {filename ="", name ="", parent_name="Hitching", hash=1251358153, trigger=false, description=""},  
    -- New Hanover -- Valentine --- curtains closed
    {filename ="", name ="", parent_name="Curtains", hash=427220750, trigger=true, description=""},  
    -- New Hanover -- Valentine --- campfire at tents
    {filename ="", name ="", parent_name="Camp", hash=1305415261, trigger=false, description=""},  
    
    -- New Hanover -- Valentine -- planks of wood, underground?!
    {filename ="", name ="", parent_name="Camp", hash=1840600379, trigger=false, description=""},        
    {filename ="", name ="", parent_name="Camp", hash=2136811572, trigger=false, description=""},  
    
    -- New Hanover -- Valentine --- south cabin
    {filename ="", name ="", parent_name="Camp", hash=765141292, trigger=false, description=""},  
    {filename ="", name ="", parent_name="Camp", hash=872406077, trigger=false, description=""},  
    {filename ="", name ="", parent_name="Camp", hash=1867048850, trigger=false, description=""},  
    {filename ="", name ="", parent_name="Camp", hash=1471226731, trigger=false, description=""},  
    {filename ="", name ="", parent_name="Fences", hash=-1490939730, trigger=false, description=""}, 
    {filename ="", name ="", parent_name="Fences", hash=-1471527776, trigger=false, description=""}, 
}
           
Config.interiors = {    
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},  
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

Config.loaded = true
