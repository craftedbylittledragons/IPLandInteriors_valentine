Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnongraves"
Config.Commands.stop = "turnoffgraves"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Graves"
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
    -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #3     
    {filename ="", name ="", parent_name="Graves", hash=1236921921, trigger=false, description=""},   
    -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #2
    {filename ="", name ="", parent_name="Graves", hash=740012805, trigger=false, description=""},     
    -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #1          
    {filename ="", name ="", parent_name="Graves", hash=-1902184438, trigger=true, description=""},     
    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #1         
    {filename ="", name ="", parent_name="Graves", hash=1886602884, trigger=true, description=""},    
    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #2  
    {filename ="", name ="", parent_name="Graves", hash=1963724330, trigger=true, description=""},

    -- New Hanover -- Valentine -- Cemetery -- Coffin in Left Grave
    {filename ="", name ="", parent_name="Coffin", hash=-1871745961, trigger=true, description=""},
    -- New Hanover -- Valentine -- Cemetery -- Coffin in Center Grave
    {filename ="", name ="", parent_name="Coffin", hash=2125514970, trigger=true, description=""},
    -- New Hanover -- Valentine -- Cemetery -- Coffin in Right Grave
    {filename ="", name ="", parent_name="Coffin", hash=267578156, trigger=true, description=""},

    -- New Hanover -- Valentine -- Cemetery -- Grass on Grave 
    {filename ="", name ="", parent_name="Grass", hash=-391187090, trigger=true, description=""},
    
    -- something relating to valentine cemetary
    {filename ="", name ="", parent_name=" ", hash=-555917871 , trigger=true, description=""},
    -- thomas downes gravestone in valentine cemetary
    {filename ="", name ="", parent_name=" ", hash=-1801047945 , trigger=true, description=""},
    -- Grave in valentine -229.31, 826.96, 124.45
    {filename ="", name ="", parent_name=" ", hash=325677491 , trigger=true, description=""},

    ############# -- Valentine Cemetery                   -- ###############    
    {filename ="", name ="", parent_name=" ", hash=-689352221 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=-451832572 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=-1349539327 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=-1640200357 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=-2127665186 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=1854980771 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=1513363974 , trigger=true, description=""},
    {filename ="", name ="", parent_name=" ", hash=-1280884206 , trigger=true, description=""},
    --{filename ="", name ="", parent_name=" ", hash= , trigger=true, description=""}, 
}

Config.interiors = {    
    {filename ="", name ="", parent_name="", hash="", trigger=true, description=""}, 
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
