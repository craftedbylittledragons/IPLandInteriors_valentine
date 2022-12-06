---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.Cabin = true 
Config.Crops = true 
Config.Fence = true

Config.Campsite = 0   -- 1 is enabled
Config.Construction = 1 -- 1 is finished, 2 under construction, 3 begin constructions, 0 no house 
Config.Materials = 1 -- 1 is finished, 2 under construction 
Config.Interiors = 1 -- 1 option finished,  2 is under construction, 3 is?

Config.Curtains = 1 -- options 1 (up) or 2 (down)

Config.Label = "House For Rent Valentine"
Config.x = -379.01 
Config.y = 917.94
Config.z = 118.59   

----------- turn on the cabin ------
function EnableResouresIMAP()  
    ------------------------House North of Valentine -441.4, 499.04, 98.94
    if Config.Cabin == true then       
        -- RequestImap(-1824080033) -- House interior at -379.01, 917.94, 118.59       
        --[0x9346BF5F] = {hashname="",dec_hash=-1824080033,x=-378.31903076172,y=916.9990234375,z=119.13053894042,h=5.1322112083436},        
    end  

end

function EnableResouresINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  
    ActivateInteriorEntitySet(interior, "val_res_a_int")       
    --]]
    local interior = GetInteriorAtCoords(x, y, z)  
    ActivateInteriorEntitySet(interior, "val_03_houseforrent")   
    ActivateInteriorEntitySet(interior, "val_03_houseforrent_detail")   
    ActivateInteriorEntitySet(interior, "val_03_houseforrent_ladder")   
    ActivateInteriorEntitySet(interior, "val_03_house_ext_em_hd")   
    ActivateInteriorEntitySet(interior, "val_03_rent_lock")   
end

----------- turn off the cabin ------
function DisableResourcesIMAPS()
    ------------------------House North of Valentine -441.4, 499.04, 98.94 
    --RemoveImap(-1824080033) -- House interior at -379.01, 917.94, 118.59
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804 
    DeactivateInteriorEntitySet(interior, "val_res_a_int")       
    ]]--

    DeactivateInteriorEntitySet(interior, "val_03_houseforrent")   
    DeactivateInteriorEntitySet(interior, "val_03_houseforrent_detail")   
    DeactivateInteriorEntitySet(interior, "val_03_houseforrent_ladder")   
    DeactivateInteriorEntitySet(interior, "val_03_house_ext_em_hd")   
    DeactivateInteriorEntitySet(interior, "val_03_rent_lock")     
end    
 

-----------------------------------------------------
------ admin commands to control the cabin ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("VNH:turnon_houseinterior", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VNH:turnon_houseinterior", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VNH:turnon_houseinterior')
AddEventHandler('VNH:turnon_houseinterior', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("VNH:turnoff_houseinterior", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VNH:turnoff_houseinterior", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VNH:turnoff_houseinterior')
AddEventHandler('VNH:turnoff_houseinterior', function(no_String)  
	DisableResourcesIMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  

-----------------------------------------------------
---remove all on resource stop---
-----------------------------------------------------
AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then     
        -- when resource stops disable them, admin is restarting the script
        DisableResourcesIMAPS() 
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
        DisableResourcesIMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
        Citizen.Wait(3000)        
        -- because the character is already logged in on resource "re"start
        character_selected = true
    end
end)
 

-----------------------------------------------------
-- Telport admin to the hosue location
-----------------------------------------------------
RegisterCommand("takemetovalcabin", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VNH:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VNH:scottybeammeup')
AddEventHandler('VNH:scottybeammeup', function(x,y,z)  
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
        EnableResouresIMAP() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
    end
end)