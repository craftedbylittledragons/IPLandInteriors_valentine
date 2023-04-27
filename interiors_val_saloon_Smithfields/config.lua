Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.loaded = false 

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonsmithfield"
Config.Commands.stop = "turnoffsmithfield"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Smithfield Saloon"
Config.x = -309.288
Config.y = 808.374
Config.z = 119.187   
 
Config.StockLevel = 1

Config.hiDef = true

Config.door_hash_v1 = { 
    5730576, ---  door entity
    3459074, ---  door entity
    3798786, ---  door entity
}

Config.door_hash_v2 = {
--[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--[3459074] ={3459074,-542955242,"p_door04x",-321.5221, 762.2973, 121.6815},  -- "Name": "Room 2B", // Valentine  
--[3798786] ={3798786,-542955242,"p_door04x",-322.7286, 767.2573, 121.7059},  -- "Name": "Room 2A", // Valentine 
--[0] ={0,-542955242,"p_door04x",-306.916, 818.918, 122.176},    -- "Name": "Room 1B", // Valentine 
}   
 
Config.ymaps = {      
    {filename ="val_03__interior_val_saloon_int_milo_.ymap", name ="val_03__interior_val_saloon_int_milo_", parent_name="Interior", hash="", trigger=true, description=""},    
 
    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet, General Store -- Crates Outside 
    {filename ="", name ="", parent_name="Construction", hash=1285430299, trigger=false, description=""},               

    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Sign in Front
    {filename ="", name ="", parent_name="Sign", hash=-1158072415, trigger=false, description=""},               

    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Boarded Windows
    {filename ="", name ="", parent_name="BoardedUp", hash=199047531, trigger=false, description=""},               
    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Boarded Up??
    {filename ="", name ="", parent_name="BoardedUp", hash=1136898294, trigger=false, description=""},               

    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Closed Sign
    {filename ="", name ="", parent_name="Closed", hash=1385025009, trigger=false, description=""},               
    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Front Doors locked
    {filename ="", name ="", parent_name="Closed", hash=-776975047, trigger=false, description=""},               

    -- Valentine Saloon -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Support Beams and Signs
    {filename ="", name ="", parent_name="Posts", hash=192173299, trigger=true, description=""},               

    -- Valentine Saloon -- boxes between valentine general store and saloon
    {filename ="", name ="", parent_name="Boxes", hash=-1000738568, trigger=false, description=""},               
    -- Valentine Saloon -- wooden box outside valentine saloon below food board
    {filename ="", name ="", parent_name="Boxes", hash=-991619789, trigger=false, description=""},               

    -- Valentine Saloon -- Valentine Saloon chimney smoke
    {filename ="", name ="", parent_name="Chimney", hash=-799526632, trigger=true, description=""},               

    -- Valentine Saloon -- Something relating to valentine saloon
    {filename ="", name ="", parent_name="Unknow", hash=666617953, trigger=true, description=""},               

}
  
Config.interiors = {    
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="int_saloon", name ="", parent_name="", hash="", trigger=true, description=""}, 

    {filename ="front_windows", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="4_chair_poker_set", name ="", parent_name="", hash="", trigger=true, description=""},
    {filename ="6_chair_poker_set", name ="", parent_name="", hash="", trigger=true, description=""},
    {filename ="val_salbedroom01", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="room_upper_rearb", name ="", parent_name="", hash="", trigger=true, description=""}, 

    {filename ="val_saloon_int", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="val_saloon_int_bar", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="val_saloon_int_main", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_int_shell", name ="", parent_name="", hash="", trigger=true, description=""},
        
    {filename ="val_saloon_walls_2f", name ="", parent_name="", hash="", trigger=true, description=""},        
    {filename ="val_saloon_walls_1f_amv", name ="", parent_name="", hash="", trigger=true, description=""},    

    {filename ="val_saloon_paint1f_06", name ="", parent_name="", hash="", trigger=true, description=""},    
    {filename ="val_saloon_paint1f_05", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_paint1f_04", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_paint1f_02", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_paint1f_01", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_paint2f_04", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_paint2f_01", name ="", parent_name="", hash="", trigger=true, description=""},  
 
    {filename ="val_saloon_int_ref_a_amv", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_int_ref_b", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_int_ref_c", name ="", parent_name="", hash="", trigger=true, description=""},  

    {filename ="val_saloon_int_shadowproxy", name ="", parent_name="", hash="", trigger=true, description=""},     
    {filename ="val_saloon_int_mr_ref_pxy", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_int_geo_amv", name ="", parent_name="", hash="", trigger=true, description=""},    

    {filename ="val_saloon_column_02r", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_column_02l", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_saloon_column_01a", name ="", parent_name="", hash="", trigger=true, description=""},  
     
    {filename ="val_saloon_johnclothes01", name ="", parent_name="", hash="", trigger=false, description=""},
    {filename ="val_saloon_johnclothes02", name ="", parent_name="", hash="", trigger=false, description=""},

    {filename ="val_saloon_br03_bed", name ="", parent_name="", hash="", trigger=true, description=""},
    {filename ="val_saloon_br03_bloody", name ="", parent_name="", hash="", trigger=false, description=""}, 

    {filename ="val_sal_main_up_flb", name ="", parent_name="", hash="", trigger=true, description=""},
    {filename ="val_sal_main_lower_fl_amv", name ="", parent_name="", hash="", trigger=true, description=""},
    {filename ="val_sal_main_shell", name ="", parent_name="", hash="", trigger=true, description=""},

    {filename ="val_sal_int_rm03_curtain", name ="", parent_name="", hash="", trigger=true, description=""},    

    {filename ="val_sal_int_decal08", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_sal_int_decal02", name ="", parent_name="", hash="", trigger=true, description=""},   
    {filename ="val_sal_int_decal01", name ="", parent_name="", hash="", trigger=true, description=""},   

    {filename ="val_sal_starway", name ="", parent_name="", hash="", trigger=true, description=""},     
    {filename ="val_sal_misc01", name ="", parent_name="", hash="", trigger=true, description=""},   
    {filename ="val_sal_ceiling_beams", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_sal_bloodybed", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_sal_barbmirror", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="val_sal_barber01", name ="", parent_name="", hash="", trigger=true, description=""},           
}
--DeactivateInteriorEntitySet(interior, 0x6297A6AC)      
--DeactivateInteriorEntitySet(interior, 0x47C5E066)  

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

--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.WaitTimer = 1000
Config.FadeTimer = 2
Config.TeleportEnter_On = true 
Config.TeleportExit_On = true 

Config.EnterRoom = {  
    {name="B",  trigger=true, x = -306.495, y= 816.306, z=119.180, h = 000.00 }, -- upstairs left - room exists and is furnished 
    {name="A",  trigger=true, x = -314.757, y= 815.003, z=119.181, h = 000.00 }, -- upstairs left - room exists and is furnished     
    {name="2B", trigger=true, x = -306.495, y= 816.306, z=119.180, h = 000.00 }, -- upstairs left  - room exist - structure interior missing    
    {name="2A", trigger=true, x = -306.673, y= 803.274, z=122.175, h = 000.00 }, -- upstairs right  - room exist - structure interior missing   
    {name="1B", trigger=true, x = -306.916, y= 818.918, z=122.176, h = 000.00 }, -- upstairs left - room exists and is furnished     
    {name="1A", trigger=true, x = -314.824, y= 817.653, z=122.176, h = 000.00 }, -- upstairs left - room exists and is furnished 
}
 
Config.ExitRoom = {
    {name="B",  trigger=true, x = -306.495, y= 816.306, z=119.180, h = 000.00 },    -- needs coords
    {name="A",  trigger=true, x = -314.757, y= 815.003, z=119.181, h = 000.00 },    -- needs coords
    {name="2B", trigger=true, x = -312.651, y= 801.041, z=121.730, h = 000.00 },    -- needs coords
    {name="2A", trigger=true, x = -306.695, y= 801.549, z=121.732, h = 000.00 },    -- needs coords   
    {name="1B", trigger=true, x = -306.916, y= 818.918, z=122.176, h = 000.00 },    -- upstairs right - room exist - structure interior missing
    {name="1A", trigger=true, x = -314.824, y= 817.653, z=122.176, h = 000.00 },    -- needs coords
}  
 
Config.loaded = true 
 