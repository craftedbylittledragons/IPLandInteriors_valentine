Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.loaded = false

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnongunstore"
Config.Commands.stop = "turnoffgunstore"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Gun Store"
Config.x = -280.873
Config.y = 781.777
Config.z = 119.725   
 
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
     -- New Hanover -- Valentine -- Gun Store   
    {filename ="val_02__interior_val_gunsmith_int_main_milo_", name ="", parent_name="", hash="", trigger=true, description=""},    
     -- New Hanover -- Valentine -- Gun Store -- Boarded Up   
    {filename ="val_02_lockdown_gun", name ="", parent_name="BoardedUp", hash="", trigger=false, description=""},  

    -- New Hanover -- Valentine -- Gun Store   -- Gunsmith -- Bench Infront 
    {filename ="", name ="", parent_name="Bench", hash=-1905652203, trigger=true, description=""}, 
    -- New Hanover -- Valentine -- Gun Store   -- Gunsmith -- big old sign gunshop  
    {filename ="", name ="", parent_name="Sign", hash=1936501508, trigger=true, description=""}, 

    -- New Hanover -- Valentine -- Gun Store   -- Gunsmith -- Box and Stool Near Pole Outside in yard.       
    {filename ="", name ="", parent_name="Pole", hash=2470511, trigger=true, description=""}, 
    -- New Hanover -- Valentine -- Gun Store   -- Gunsmith -- White Sign
    {filename ="", name ="", parent_name="Sign", hash=325677491, trigger=true, description=""}, 
    
    -- New Hanover -- Valentine -- Gun Store   -- Gunsmith -- Structures in front?  
    {filename ="", name ="", parent_name="Porch", hash=-1933617196, trigger=true, description=""}, 
    -- New Hanover -- Valentine -- Gun Store   -- Gunsmith -- Structures in front?      
    {filename ="", name ="", parent_name="Porch", hash=-951314072, trigger=true, description=""},     
} 
  
Config.interiors = {    
    --{filename ="", name ="", parent_name="", hash="", trigger=true, description=""},   
    {filename ="val_gunsmith_int_main", name ="", parent_name="", hash="", trigger=true, description=""}, 

    -- New Hanover -- Valentine -- Gun Store  -- arrow  
    {filename ="_s_inv_arrowammo01x_dressing", name ="", parent_name="", hash="", trigger=true, description=""},  

    -- New Hanover -- Valentine -- Gun Store  -- highvlcty  
    {filename ="_s_inv_highvlcty_pstAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},      
    {filename ="_s_inv_highvlcty_revAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},      
    {filename ="_s_inv_highvlcty_rifleAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},  
       
    -- New Hanover -- Valentine -- Gun Store  -- pistol  
    {filename ="_s_inv_pistolAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},   
    {filename ="_s_inv_pistol_sign_dressing", name ="", parent_name="", hash="", trigger=true, description=""},

    -- New Hanover -- Valentine -- Gun Store  -- repeater  
    {filename ="_s_inv_repeater_sign_dressing", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="_s_inv_repeatHV_rifleammo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="_s_inv_repeat_rifleammo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},  
  
    -- New Hanover -- Valentine -- Gun Store  -- revolver 
    {filename ="_s_inv_revolverAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="_s_inv_revolver_sign_dressing", name ="", parent_name="", hash="", trigger=true, description=""},  

    -- New Hanover -- Valentine -- Gun Store  -- rifle 
    {filename ="_s_inv_rifleAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="_s_inv_rifle_sign_dressing", name ="", parent_name="", hash="", trigger=true, description=""},  
      
    -- New Hanover -- Valentine -- Gun Store  -- shotgun 
    {filename ="_s_inv_shotgunAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="_s_inv_shotgun_sign_dressing", name ="", parent_name="", hash="", trigger=true, description=""},  
    {filename ="_s_inv_slug_shotgunAmmo01x_group", name ="", parent_name="", hash="", trigger=true, description=""}, 
 
    -- New Hanover -- Valentine -- Gun Store  -- varmint 
    {filename ="_s_inv_varmint_rifleammo01x_group", name ="", parent_name="", hash="", trigger=true, description=""},
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
