Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonhotel"
Config.Commands.stop = "turnoffhotel"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Hotel"
Config.x = -324.238
Config.y = 766.965
Config.z = 116.409   

Config.Curtain = 3 -- options 1  or 2  or 0 (None)

Config.hiDef = true

Config.door_hash_v1 = {
    ----Valentine
    4141826, -- bath door  p_door33x

    4648450, -- room 1B  p_door33x
    5007106, -- room 1A  p_door33x
    5306114, -- room 2C  p_door33x
    5562370, -- room 2A  p_door33x
    5756930, -- room 2B  p_door33x 

    5746690, -- upstairs hall  - outside  p_door33x
    5325314, -- upstairs hall  - outside  p_doorfrench01r
    5324290, -- upstairs hall  - outside  p_doorfrench01l

    7291394, -- upstairs - outside  p_doorfrench01r
    7291906, -- upstairs - outside  p_doorfrench01l

    7289346, -- upstairs - outside  p_doorfrench01r
    7289858, -- upstairs - outside  p_doorfrench01l    
    
    1922819, -- front door - p_door33x  
}

Config.door_hash_v2 = {
    --[[
    [3798786] = {3798786,-542955242,"p_door04x",-322.7286, 767.2573, 121.7059},  -- "Name": "Room 2A", // Valentine
    [3459074] = {3459074,-542955242,"p_door04x",-321.5221, 762.2973, 121.6815},  -- "Name": "Room 2B", // Valentine
    --]]
}   
 
Config.ymaps = { 
    {filename ="val_02__interior_val_hotel_int_main_milo_", name ="", parent_name="", hash="", trigger=true, description=""},    
    {filename ="val_02_lockdown_hotel", name ="", parent_name="BoardedUp", hash="", trigger=false, description=""},    
    {filename ="", name ="", parent_name="", hash=-1588793465, trigger=true, description=""},  -- suit case and red sign front porch
    {filename ="", name ="", parent_name="BoardedUp", hash=-780819048, trigger=false, description=""}, -- boarded up front porch
    {filename ="", name ="", parent_name="", hash=1519091923, trigger=true, description=""},  -- pedestal front porch
 } 
  
Config.interiors = {              
    {filename ="val_hotel_int_main", name ="", parent_name="", hash="", trigger=false, description=""},   
    {filename ="LevDes_Val_MUD3", name ="", parent_name="", hash="", trigger=false, description=""}, 
    {filename ="MUD3_val_hotel_room1b_curtain", name ="", parent_name="Curtain", level=1, hash="", trigger=true, description=""}, 
    {filename ="MUD3_val_hotel_room1b_prayercurtain", name ="", parent_name="Curtain", level=1,  hash="", trigger=true, description=""}, 
    {filename ="mud3_val_hotel_room_curtain01", name ="", parent_name="Curtain", level=2,  hash="", trigger=true, description=""},          
    {filename ="val_hotel_int_rentSign", name ="", parent_name="Sign", hash="", trigger=false, description=""},   
    --{filename ="", name ="", parent_name="", hash="", trigger=false, description=""},           
}
 
Config.ydr = {
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},      
}

Config.yft = {
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},         
}

Config.ytd = {    
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},            
} 

Config.ytd_hidef = {
    --{filename ="+hi", name ="", parent_name="", hash="", trigger=false, description=""},       
}
 

--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.WaitTimer = 1000
Config.FadeTimer = 2

Config.TeleportEnter_On = false
Config.EnterRoom = {x = -323.707, 767.1247, 121.6827, h = 000.00 }
Config.EnterRoom2B = {x = -322.74, 762.0117, 120.6835, h = 000.00 }

Config.TeleportExit_On = false
Config.ExitRoom = {x = -321.8341, 767.2936, 121.6827 , h = 000.00 }
Config.ExitRoom2B = {x = -321.2203, 762.3177, 120.6814, h = 000.00 }
  
 