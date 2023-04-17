Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnonbank"
Config.Commands.stop = "turnoffbank"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine Bank"
Config.x = -307.886
Config.y = 772.327
Config.z = 118.435   

Config.hiDef = true

Config.door_hash_v1 = {
    ----Valentine
    3886827663,----------- Bank Main
    2642457609,----------- Bank Main
    1340831050,----------- Bank gates
    2343746133,----------- Bank gates
    334467483,-----------  Bank Office
    3718620420,----------- Bank Office
    2307914732,----------- Bank Back Door
    202296518, ----------- Dom nad valentine
    2469737289, ---------- Stavenisko valentine lave
    2238945222,----------- Stavenisko Val prave
}

Config.door_hash_v2 = {
--[[
[5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
--]] 
}  

Config.ymaps = {
    {filename ="val_02__interior_val_bank_int_main_milo_", name ="", parent_name="Interior", hash="", trigger=true, description=""},
    {filename ="val_02_lockdown_bank", name ="", parent_name="LockDown", hash="", trigger=false, description=""},
    {filename ="val_01__strm_0", name ="", parent_name="Storm", hash="", trigger=false, description=""},    
    {filename ="", name ="", parent_name="BoardedUp", hash=-1989899190, trigger=false, description=""},    
    {filename ="", name ="", parent_name="Unknown",  hash=-784156210,  trigger=true, description=""},        
    {filename ="", name ="", parent_name="Unknown1", hash=-1229144803, trigger=true, description=""}, -- west wall bars on windows   
    {filename ="", name ="", parent_name="Unknown2", hash=-1928020839, trigger=true, description=""}, -- brick exterior of bank     
} 

Config.interiors = {    
    -- if on fills in the windows. Only turn one on, or turn them both off. 
    {filename ="val_bank_front_windows", name ="", parent_name="Windows", hash="", trigger=true, description=""},         
    {filename ="val_bank_mud5_windowblock", name ="", parent_name="Windows", hash="", trigger=false, description=""},     

    -- if on fills in the windows. Only turn one on, or turn them both off. 
    {filename ="val_bank_int_curtainsopen", name ="", parent_name="Curtains", hash="", trigger=true, description=""},         
    {filename ="val_bank_int_curtainsclosed", name ="", parent_name="Curtains", hash="", trigger=false, description=""},         

    {filename ="val_bank_settee", name ="", parent_name="Settee", hash="", trigger=true, description=""},         

    {filename ="val_bank_vault_dressing", name ="", parent_name="Vault", hash="", trigger=true, description=""},         
    {filename ="val_bank_vault_dressing_damage", name ="", parent_name="Vault", hash="", trigger=false, description=""}, 

    {filename ="val_bank_int_vaults_dynamite", name ="", parent_name="Dynamite", hash="", trigger=false, description=""},         

    {filename ="val_bank_int_vaults_safe_crack", name ="", parent_name="Crack", hash="", trigger=false, description=""},         
    {filename ="val_bank_int_vaults_safe_crack_highres", name ="", parent_name="Crack", hash="", trigger=false, description=""},            
}

 
Config.ydr = {
    {filename ="p_door_val_bank02", name ="", parent_name="Doors", hash="", trigger=true, description=""},        
    {filename ="p_door_vault_nbx2", name ="", parent_name="Vault", hash="", trigger=false, description=""},
    {filename ="p_door_vault_nbx1", name ="", parent_name="Vault", hash="", trigger=false, description=""},   
    {filename ="p_gate_valbankvlt", name ="", parent_name="Vault", hash="", trigger=false, description=""},    
}

Config.yft = {
    {filename ="p_door_val_bankvault", name ="", parent_name="Vault", hash="", trigger=true, description=""},        
    {filename ="p_door_val_bank00_rx", name ="", parent_name="Doors", hash="", trigger=true, description=""},
    {filename ="p_door_val_bank00_lx", name ="", parent_name="Doors", hash="", trigger=true, description=""}, 
    {filename ="p_door_val_bank01", name ="", parent_name="Doors", hash="", trigger=true, description=""},    
    {filename ="p_bank_safe_r", name ="", parent_name="Crack", hash="", trigger=false, description=""}, 
    {filename ="p_bank_safe_med_l", name ="", parent_name="Crack", hash="", trigger=false, description=""},     
    {filename ="p_doorvaldr01x", name ="", parent_name="Doors", hash="", trigger=false, description=""},     
}

Config.ytd = {    
    {filename ="p_door_val_bank00", name ="", parent_name="Doors", hash="", trigger=true, description=""},    
    {filename ="p_door_vault_nbx", name ="", parent_name="Vault", hash="", trigger=false, description=""},           
} 

Config.ytd_hidef = {
    {filename ="p_door_vault_nbx+hi", name ="", parent_name="Vault", hash="", trigger=false, description=""},    
    {filename ="p_door_val_bankvault+hifr", name ="",  parent_name="Vault", hash="", trigger=true, description=""}, 
    {filename ="p_door_val_bank02+hidr", name ="", parent_name="Doors", hash="", trigger=true, description=""},
    {filename ="p_door_val_bank01+hifr", name ="", parent_name="Doors", hash="", trigger=true, description=""},
    {filename ="p_door_val_bank00+hi", name ="", parent_name="Doors", hash="", trigger=true, description=""},
    {filename ="p_bank_safe_r+hifr", name ="", parent_name="Crack", hash="", trigger=false, description=""}, 
    {filename ="p_bank_safe_med_l+hifr", name ="", parent_name="Crack", hash="", trigger=false, description=""}, 
    {filename ="p_gate_valbankvlt+hifr", name ="", parent_name="Vault", hash="", trigger=false, description=""},   
}

 
 