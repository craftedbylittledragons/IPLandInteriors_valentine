Config = {} 
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server 
Config.Carriagehouse = true 

Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnoncarriagehouse"
Config.Commands.stop = "turnoffcarriagehouse"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Carriage House"
Config.x = -273.67654418946 -- need to find this imap 
Config.y = 689.20971679688
Config.z = 117.64358520508 

Config.hiDef = true
position = 0

Config.door_hash_v1 = {
    ----Valentine
    3886827663,----------- Bank Main
    2642457609,----------- Bank Main 
}

Config.door_hash_v2 = {
--[[
[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--]] 
}  

--[[ 	
[0x84D4CD30] = {hashname="val_01__interior_val_carriagehouse_int_milo_",dec_hash=-2066428624,x=-273.67654418946,y=689.20971679688,z=117.64358520508,h=23.69799041748},
--]] 

Config.ymaps = {
    {filename ="val_01__interior_val_carriagehouse_int_milo_.ymap", name="val_01__interior_val_carriagehouse_int_milo_", hash=GetHashKey("val_01__interior_val_carriagehouse_int_milo_"), trigger=true, description=""},
    {filename ="", name ="", parent_name="", hash=-2066428624, trigger=false, description=""},    
    {filename ="", name ="", parent_name="", hash=1595374394, trigger=false, description=""},      
}
 
Config.interiors = {    
    -- if on fills in the windows. Only turn one on, or turn them both off. 
    {filename ="val_carriagehouse_int", name ="", parent_name="House", hash="", trigger=true, description=""},                     
}
 
Config.ydr = {
    {filename ="", name ="", parent_name="", hash="", trigger=true, description=""},        
}

Config.yft = {
    {filename ="", name ="", parent_name="", hash="", trigger=true, description=""},            
}

Config.ytd = {    
    {filename ="", name ="", parent_name="", hash="", trigger=true, description=""},            
} 

Config.ytd_hidef = {
    {filename ="", name ="", parent_name="", hash="", trigger=false, description=""},       
}
 