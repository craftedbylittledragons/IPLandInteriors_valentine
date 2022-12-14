---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server
 
Config.Carriagehouse = true 

ymaps = {
    {filename ="val_01__interior_val_carriagehouse_int_milo_.ymap", name="val_01__interior_val_carriagehouse_int_milo_", hash=GetHashKey("val_01__interior_val_carriagehouse_int_milo_"), trigger=true, description=""},
}

Config.Label = "Carriage House Valentine"
Config.x = -273.67654418946 -- need to find this imap 
Config.y = 689.20971679688
Config.z = 117.64358520508    

local position = 0

--[[ 	
[0x84D4CD30] = {hashname="val_01__interior_val_carriagehouse_int_milo_",dec_hash=-2066428624,x=-273.67654418946,y=689.20971679688,z=117.64358520508,h=23.69799041748},
--]]
----------- turn on the cabin ------
function EnableResouresIMAP()    
    if Config.Carriagehouse == true then 
        RequestImap(-2066428624) -- House interior at -379.01, 917.94, 118.59   
    end   
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)    
        if row.trigger == true then 
            RequestImap(row.hash)        
        end 
    end     
end  

function EnableResouresINTERIORS(x, y, z)      
    local interior = GetInteriorAtCoords(x, y, z)      
    if Config.Carriagehouse == true then 
        --[35842] = {x=-273.46157836914,y=688.9580078125,z=111.74069213867,typeHashId=1595374394,typeHashName="val_carriagehouse_int",rpf="val_carriagehouse_int.rpf"}
        ActivateInteriorEntitySet(interior, "val_carriagehouse_int")
    end 
end

----------- turn off the cabin ------
function DisableResourcesIMAPS()
    RemoveImap(-2066428624) -- House interior at -379.01, 917.94, 118.59 
    RemoveImap(1595374394) -- House interior at -379.01, 917.94, 118.59  
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)     
        RemoveImap(row.hash)    
    end     
end

function DisableResourcesINTERIORS(x, y, z)  

    local interior = GetInteriorAtCoords(x, y, z) 
    -- [35842] = {x=-273.46157836914,y=688.9580078125,z=111.74069213867,typeHashId=1595374394,typeHashName="val_carriagehouse_int",rpf="val_carriagehouse_int.rpf"},
    DeactivateInteriorEntitySet(interior, "val_carriagehouse_int")    
end    
 

-----------------------------------------------------
------ admin commands to control the cabin ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("CarriageHouse:turnon_houseinterior", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "CarriageHouse:turnon_houseinterior", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('CarriageHouse:turnon_houseinterior')
AddEventHandler('CarriageHouse:turnon_houseinterior', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("CarriageHouse:turnoff_houseinterior", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "CarriageHouse:turnoff_houseinterior", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('CarriageHouse:turnoff_houseinterior')
AddEventHandler('CarriageHouse:turnoff_houseinterior', function(no_String)  
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
RegisterCommand("CarriageHouse:takemeto_CarriageHouse", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "CarriageHouse:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterCommand("CarriageHouse:takemeto_ipl", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "CarriageHouse:scottybeammeup", position.x, position.y, position.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('CarriageHouse:scottybeammeup')
AddEventHandler('CarriageHouse:scottybeammeup', function(x,y,z)  
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