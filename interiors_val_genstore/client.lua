---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false

Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.BoardUp = false 
Config.Fruit = true
Config.unknow = false
Config.Closed = false
Config.Sign = true
Config.Boxes = false

Config.Label = "Valentine General Store"
Config.x = -323.411
Config.y = 801.078
Config.z = 117.631   

----------- turn on the bar ------
function EnableResouresIMAP() 
    -- none for this set
    if Config.BoardUp == true then  
        RequestImap(56708243)     -- New Hanover -- Valentine -- Green House -- General Store -- Boarded up? 
	    RequestImap(1228600352)   -- New Hanover -- Valentine -- General Store -- Boarded Up
    end 
        
    if Config.Fruit == true then  
	    RequestImap(1573766063)   -- New Hanover -- Valentine -- General Store -- Fruit in front?
    end 

    if Config.unknow == true then  
	    RequestImap(-554932707)   -- New Hanover -- Valentine -- General Store -- Something Regarding It
        -- increases the ipl flicker in the genstore, unsure what it is yet. I don't see any changes or clear overlays
    end 

    if Config.Closed == true then  
	    RequestImap(406334892)    -- New Hanover -- Valentine -- General Store -- Closed Sign on Door 
    end 

    if Config.Sign == true then  
	    RequestImap(135886022)    -- New Hanover -- Valentine -- General Store -- Sign in Front  
    end 

    if Config.Boxes == true then  
        RequestImap(2095116685)    -- New Hanover -- Valentine -- Green House -- General Store -- Saloon Mainstreet -- Supplies/Boxes in Front 
    end 

-- there is an ipl flicker at the cash register in the gen store. source unknow yet.

end

function EnableResouresINTERIORS(x, y, z)   
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  
    if Config.Cats == true then 
        ActivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end 
    --]]  
    local interior = GetInteriorAtCoords(x, y, z)  
	ActivateInteriorEntitySet(interior, "val_genstore") 
    ActivateInteriorEntitySet(interior, "val_genstore_night_light") 
end

----------- turn off the bar ------
function DisableResourcesIMAPS() 
    RemoveImap(56708243)     -- New Hanover -- Valentine -- Green House -- General Store -- Boarded up? 
    RemoveImap(1228600352)   -- New Hanover -- Valentine -- General Store -- Boarded Up 
    RemoveImap(1573766063)   -- New Hanover -- Valentine -- General Store -- Fruit in front? 
    RemoveImap(-554932707)   -- New Hanover -- Valentine -- General Store -- Something Regarding It 
    RemoveImap(406334892)    -- New Hanover -- Valentine -- General Store -- Closed Sign on Door  
    RemoveImap(135886022)    -- New Hanover -- Valentine -- General Store -- Sign in Front    
    RemoveImap(2095116685)    -- New Hanover -- Valentine -- Green House -- General Store -- Saloon Mainstreet -- Supplies/Boxes in Front  
end

function DisableResourcesINTERIORS(x, y, z)      
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804     
    if Config.Cats == true then 
        DeactivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end  
    --]]
    
    local interior = GetInteriorAtCoords(x, y, z)  
	DeactivateInteriorEntitySet(interior, "val_genstore") 
    DeactivateInteriorEntitySet(interior, "val_genstore_night_light") 
end    
  
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("turnonVGENST", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VGENST:turnonVGENST", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGENST:turnonVGENST')
AddEventHandler('VGENST:turnonVGENST', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffVGENST", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VGENST:turnoffVGENST", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGENST:turnoffVGENST')
AddEventHandler('VGENST:turnoffVGENST', function(no_String)  
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
RegisterCommand("takemeto_VGENST", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VGENST:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VGENST:scottybeammeup')
AddEventHandler('VGENST:scottybeammeup', function(x,y,z)  
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
 