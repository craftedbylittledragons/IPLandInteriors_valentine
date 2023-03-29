Config = {}
Config.ScriptName = GetCurrentResourceName()

Config.Commands = {}
Config.Commands.trigger = true 
Config.Commands.start = "turnongenstore2"
Config.Commands.stop = "turnoffgenstore2"

Config.Teleporter = {}
Config.Teleporter.trigger = true 
Config.Teleporter.name = "scottybeammeup" 

Config.Label = "Valentine General Store"
Config.x = -323.411
Config.y = 801.078
Config.z = 117.631   

Config.StockLevel = 1 
-- 0 = bare bones 
-- 1 = end of month (running low) 
-- 2 = mid month good stock 
-- 3 = fully stocked

Config.hiDef = true

Config.door_hash_v1 = {
    "", ---  door hash
}

Config.door_hash_v2 = { 
-- [5730576] = {5730576,-164490887,"p_door_val_genstore2",-325.49053955078125, 806.7294311523438, 116.883544921875},
}  

Config.ymap = {     
    {filename ="val_03__interior_val_genstore_milo_", name ="", parent_name="", hash="", trigger=true, description=""},    
    -- New Hanover -- Valentine -- Green House -- General Store -- Boarded up?  
    {filename ="", name ="", parent_name="BoardUp", hash=56708243, trigger=false, description=""},     
    -- New Hanover -- Valentine -- General Store -- Boarded Up    
    {filename ="", name ="", parent_name="BoardUp", hash=1228600352, trigger=false, description=""},   

    -- New Hanover -- Valentine -- General Store -- Fruit in front?
    {filename ="", name ="", parent_name="Fruit", hash=1573766063, trigger=true, description=""},    

    -- New Hanover -- Valentine -- General Store -- Something Regarding It
    -- increases the ipl flicker in the genstore, unsure what it is yet. I don't see any changes or clear overlays
    {filename ="", name ="", parent_name="Unknown", hash=-554932707, trigger=false, description=""},        
    -- something regarding the saloon and store?
    {filename ="", name ="", parent_name="Unknown", hash=897455211, trigger=false, description=""},
    -- Crates outside saloon and gen store?
    {filename ="", name ="", parent_name="Unknown", hash=1285430299, trigger=false, description=""},

    -- New Hanover -- Valentine -- General Store -- Closed Sign on Door 
    {filename ="", name ="", parent_name="ClosedSign", hash=406334892, trigger=false, description=""}, 
    -- New Hanover -- Valentine -- General Store -- Sign in Front
    {filename ="", name ="", parent_name="DoorSign", hash=135886022, trigger=true, description=""}, 
    -- New Hanover -- Valentine -- Green House -- General Store -- Saloon Mainstreet -- Supplies/Boxes in Front 
    {filename ="", name ="", parent_name="Boxes", hash=2095116685, trigger=false, description=""},  
    
    --{filename ="", name ="", parent_name="", hash="", trigger=false, description=""},    
 }

Config.interiors = {    
    {filename ="val_genstore", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="val_genstore_night_light", name ="", parent_name="", hash="", trigger=true, description=""}, 
    {filename ="_p_apple01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_bread06x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_carrots_01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_cigar02x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_p_cigarettebox01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""}, 
    {filename ="_p_corn02x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_int_fishing01_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_p_package01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_p_pear_02x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_tin_pomade01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},   
    {filename ="_p_tin_soap01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_biscuits01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_canBeans01_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_canCorn01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_canPeaches01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},   
    {filename ="_p_apple01x_dressing", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_chocolateBar02x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_coffeeTin01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_crackers01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_cricketTin01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},   
    {filename ="_s_gunOil01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_baitHerb01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_baitMeat01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_gin01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_horsePills01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},   
    {filename ="_s_inv_pocketwatch04x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_rum01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_tabacco01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_inv_whiskey01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_oatcakes01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},   
    {filename ="_s_offal01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_s_wormCan01x_dressing", name ="", parent_name="StockLevel", level="2", hash="", trigger=true, description=""},  
    {filename ="_p_apple01x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_bread06x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""}, 
    {filename ="_p_carrots_01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_p_cigar02x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_p_cigarettebox01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_p_corn02x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_p_package01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_p_pear_02x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_p_tin_pomade01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_p_tin_soap01x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_biscuits01x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""}, 
    {filename ="_s_canBeans01x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},  
    {filename ="_s_canCorn01x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""}, 
    {filename ="_s_candyBag01x_red_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_canPeaches01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_s_cheeseWedge1x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
    {filename ="_s_chocolateBar02x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_coffeeTin01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_s_crackers01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
    {filename ="_s_cricketTin01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_gunOil01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_s_inv_baitherb01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_inv_baitmeat01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
    {filename ="_s_inv_gin01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_inv_horsePills01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_s_inv_pocketWatch04x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_inv_rum01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
    {filename ="_s_inv_tabacco01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_inv_whiskey01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    {filename ="_s_oatcakes01x_group", name ="", parent_name="StockLevel", level="1", hash="", trigger=true, description=""},
    {filename ="_s_offal01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_saltedbeef01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
    {filename ="_s_saltedbeef02x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""}, 
    {filename ="_s_wormcan01x_group", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},  
    --{filename ="", name ="", parent_name="StockLevel", level="3", hash="", trigger=true, description=""},
}

Config.ytd = {    
    --{filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},    
    {filename ="p_door_val_genstore.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},     
    {filename ="p_doorvaldr01x+hifr.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_doorval6pnlch01x.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_doorval6pnlch01x+hi.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},   
}

Config.ydr = {
    --{filename =" ", name =" ", parent_name=" ", hash="", trigger=true, description=""},   
    {filename ="p_door_val_genstore2.ydr",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_genstore3.ydr",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
}

Config.yft = {
    --{filename =" ", name ="", parent_name=" ", hash="", trigger=true, description=""},        
    {filename ="p_door_val_genstore.yft",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_genstore_bell.yft",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
}

Config.ytd_hidef = {
    --{filename =" ", name ="",  parent_name=" ", hash="", trigger=true, description=""}, 
    {filename ="p_door_val_genstore2+hidr.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_genstore3+hidr.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_genstore+hi.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""},
    {filename ="p_door_val_genstore_bell+hifr.ytd",  name ="", parent_name="val_01__strm_0", hash="", trigger=false, description=""}, 
}
 
--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5
Config.TeleportEnter_On = true 
Config.EnterStoreRoom = {x = -326.084, y = 805.856, z = 117.631, h = 359.987 }
Config.TeleportExit_On = true 
Config.ExitStoreRoom = {x = -326.378, y = 807.442, z = 117.644, h = 150.678 }
Config.WaitTimer = 1000
Config.FadeTimer = 2
