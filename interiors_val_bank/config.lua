Config = {}
Config.ScriptName = "interiors_val_bank"
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

--imap
Config.Windows = true 
Config.WindowsType = 2  -- optiosn 1 or 2 
Config.Curtains = true -- options 1 (up) or 2 (down)

Config.Settee = true -- options 1 or 2 --couch in the lobby
Config.Vault = false -- options 1 (up) or 2 (down)

Config.Robbery = false
Config.Dynamite = false -- options 1 (up) or 2 (down)
Config.Safecrack = false -- options 1 (up) or 2 (down)
Config.HRSafecrack = false -- options 1 (up) or 2 (down)
Config.Damaged = false -- options 1 (up) or 2 (down)

Config.BoardedUp = false

-- interiors
Config.Unknown = false
Config.Unknown1 = false
Config.Unknown2 = false

Config.Label = "Valentine Bank"
Config.x = -307.886
Config.y = 772.327
Config.z = 118.435   


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


ymaps = {
    {filename ="val_02__interior_val_bank_int_main_milo_.ymap", name="val_02__interior_val_bank_int_main_milo_", hash=GetHashKey("val_02__interior_val_bank_int_main_milo_"), trigger=true, description=""},
    {filename ="val_02_lockdown_bank.ymap", name="val_02_lockdown_bank", hash=GetHashKey("val_02_lockdown_bank"), trigger=true, description=""},
}
 