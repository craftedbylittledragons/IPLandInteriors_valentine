Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.loaded = false

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonlawoffice"
Config.Commands.stop = "turnofflawoffice"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Law Office"
Config.x = -290.990387
Config.y = 779.267822
Config.z = 127.293602  
 
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
     -- New Hanover -- Valentine -- Law Office -- Boarded Up   
    {filename ="", name ="", parent_name="BoardedUp", hash=-5214081, trigger=false, description=""},    
     -- New Hanover -- Valentine -- Law Office -- Chair in front
    {filename ="", name ="", parent_name="Chair", hash=1186533019, trigger=true, description=""},     
    -- New Hanover -- Valentine -- Law Office -- Posts 
    {filename ="", name ="", parent_name="Square", hash=-156313117, trigger=true, description=""}, 
    -- New Hanover -- Valentine -- Law office -- Fancy Posts      
    {filename ="", name ="", parent_name="Fancy", hash=924412185, trigger=true, description=""}, 
    -- val_03__strm_0  -986079299     scottybeammeup -287.83822631836 772.24346923828 123.43955993652 - law office      
    {filename ="", name ="", parent_name="Unknown", hash=-986079299, trigger=false, description=""}, 
}
-- two part switch (Square = false, Fancy = true    = Thick posts)
-- two part switch (Square = true,  Fancy = false   = Fancy Damaged posts)
-- two part switch (Square = true,  Fancy = true    = Fancy posts)
  
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
