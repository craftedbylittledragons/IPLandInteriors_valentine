---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false

Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.BoardedUp = false 

Config.Chair = true 

-- two part switch (Porch = false, Fancy = true = Thick posts)
-- two part switch (Porch = true, Fancy = false = Fancy Damaged posts)
-- two part switch (Porch = true, Fancy = true = Fancy posts)
Config.Porch = false 
Config.Fancy = true 

Config.Unknow = true

ymaps = {
    {filename ="val_03__interior_val_jail_int_milo_.ymap", name="val_03__interior_val_jail_int_milo_", hash=GetHashKey("val_03__interior_val_jail_int_milo_"), trigger=true, description=""},
    {filename ="val_03_props_lockdown_jail.ymap", name="val_03_props_lockdown_jail", hash=GetHashKey("val_03_props_lockdown_jail"), trigger=false, description=""},    
    {filename ="val_03_default_jail.ymap", name="val_03_default_jail", hash=GetHashKey("val_03_default_jail"), trigger=true, description=""},    
}


Config.Label = "Valentine Law Office"
Config.x = -290.990387
Config.y = 779.267822
Config.z = 127.293602  

--[  14234313] [RedM_b1436_GTA]             MainThrd/ OnConnectionProgress: Mounted interiors_val_lawoffice (1 of 1)
--[  14240610] [RedM_b1436_GTA]             MainThrd/ current interior 63746 position is: vec3(-290.990387, 779.267822, 127.293602)
--[  14240610] [RedM_b1436_GTA]             MainThrd/ current interior 63746 IsInteriorReady: 	1
--[  14240610] [RedM_b1436_GTA]             MainThrd/ current interior 63746 IsInteriorScene: 	false
--[  14240610] [RedM_b1436_GTA]             MainThrd/ current interior 63746 IsValidInterior: 	1
--[  14240610] [RedM_b1436_GTA]             MainThrd/ current interior 63746 SetInteriorInUse: 	63746
--[  14240610] [RedM_b1436_GTA]             MainThrd/ current interior 63746 IsInteriorEntitySetActive: 	1	nil

----------- turn on the bar ------
function EnableResouresYMAPS() 
    -- none for this set
    if Config.BoardedUp == true then 
	    RequestImap(-52140817)    -- New Hanover -- Valentine -- Law Office -- Boarded Up 	    
    end 
    if Config.Chair == true then 
        RequestImap(1186533019)  -- New Hanover -- Valentine -- Law Office -- Chair in front
    end  	  
    if Config.Porch == true then 
        RequestImap(-156313117)  -- New Hanover -- Valentine -- Law Office -- Posts 
    end  	    
    if Config.Fancy == true then 
        RequestImap(924412185)   -- New Hanover -- Valentine -- Law office -- Fancy Posts
    end  	    
    if Config.Unknow == true then 
        RequestImap(-986079299)    
        -- val_03__strm_0  -986079299     scottybeammeup -287.83822631836 772.24346923828 123.43955993652 - law office  
    end  	 
       
end

function EnableResouresINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804 
    if Config.Cats == true then 
        ActivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end  
    --]]
end

----------- turn off the bar ------
function DisableResourcesYMAPS()
	RemoveImap(-52140817)    -- New Hanover -- Valentine -- Law Office -- Boarded Up
	RemoveImap(1186533019)  -- New Hanover -- Valentine -- Law Office -- Chair in front
	RemoveImap(-156313117)  -- New Hanover -- Valentine -- Law Office -- Structure in front
	RemoveImap(924412185)    -- New Hanover -- Valentine -- Law office -- (REMOVE FOR structural damage)   
    RemoveImap(-986079299)    -- storm
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804 
    if Config.Cats == true then 
        DeactivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end 
    ]]--  
end    
 

-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("turnonVLO", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VLO:turnonVLO", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VLO:turnonVLO')
AddEventHandler('VLO:turnonVLO', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffVLO", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VLO:turnoffVLO", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VLO:turnoffVLO')
AddEventHandler('VLO:turnoffVLO', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  

-----------------------------------------------------
---remove all on resource stop---
-----------------------------------------------------
AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then     
        -- when resource stops disable them, admin is restarting the script
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    end
end)

-----------------------------------------------------
--- clear all on resource start ---
-----------------------------------------------------
AddEventHandler('onResourceStart', function(resource) 
    if resource == GetCurrentResourceName() then         
        Citizen.Wait(3000)
        -- interiors loads all of these, so we need to disable them 
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
        Citizen.Wait(3000)        
        -- because the character is already logged in on resource "re"start
        character_selected = true
    end
end)
 

-----------------------------------------------------
-- Telport admin to the hosue location
-----------------------------------------------------
RegisterCommand("takemeto_VLO", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VLO:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VLO:scottybeammeup')
AddEventHandler('VLO:scottybeammeup', function(x,y,z)  
    local player = PlayerPedId() 
    Wait(800)
    DoScreenFadeOut(5000) 
    Wait(10000)
    SetEntityCoords(player, x, y, z)
    DoScreenFadeIn(5000)      
end)
 

-----------------------------------------------------
-- Trigger when character is selected
-----------------------------------------------------
RegisterNetEvent("vorp:SelectedCharacter") -- NPC loads after selecting character
AddEventHandler("vorp:SelectedCharacter", function(charid) 
	character_selected = true
end)


-----------------------------------------------------
-- Main thread that controls the script
-----------------------------------------------------
Citizen.CreateThread(function()
    while character_selected == false do 
        Citizen.Wait(1000)
    end 
    if character_selected == true and interiorsActive == false then 
        -- basically run once after character has loadded in  
        EnableResouresYMAPS() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
    end
 

end)