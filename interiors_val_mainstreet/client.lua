---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.Barricades = false 
Config.Wagons = false 
Config.Barrels = false 
Config.FastTravel = false 
Config.WestMarker = false 
Config.Construction = false 

Config.Banners = true 
Config.WaterTrough = true 
Config.Fencing = true 
Config.YellowHouse = true  
Config.StormDebris = true  

Config.StablesFrontWindow = false 

Config.Label = "Val Main Street"
Config.x = -306.703
Config.y = 789.619
Config.z = 117.950   

----------- turn on the bar ------
function EnableResouresIMAP()  

    if Config.Construction == true then 
        RequestImap(-713587740)    -- New Hanover -- Valentine -- Streets -- Construction Material
        RequestImap(2040843256) -- Valentine -- Construction supplies outside of Smithfields Saloon / Green Building -- https://gyazo.com/c5b67926f2c4304b74061ca62b345a1b        
     end 
     
     if Config.Wagons == true then
         RequestImap(-1217078386)   -- New Hanover -- Valentine -- Wagons -- Blocking road through Valentine
         RequestImap(-1579403437)   -- New Hanover -- Valentine -- Wagons -- Parked in front of bank
         RequestImap(517553365)     -- New Hanover -- Valentine -- Wagons -- 2 Wagons in front of and behind of blue house across from Kane's Saloon.
         RequestImap(999248445) -- Valentine -- Yellow Wagon with Blue Barrels outside Smithfields Saloon  -- https://gyazo.com/467e15f5cd1de68bad5e2d414fa330d4
  
     end 
 
     if Config.Barricades == true then 
         RequestImap(805009584)     -- New Hanover -- Valentine -- Barricades -- Western 
         RequestImap(-560409108)    -- New Hanover -- Valentine -- Barricades -- Eastern
         RequestImap(-518785376)    -- New Hanover -- Valentine -- Barricades -- Southern
     end 
 
    if Config.Barrels == true then 
        RequestImap(-661560211)   -- New Hanover -- Valentine -- Barrels Everywhere?    
    end   

    if Config.Fencing == true then 
        RequestImap(-1475403379)  -- New Hanover -- Valentine -- Fencing at farm     
    end  

    if Config.FastTravel == true then 
        RequestImap(731209239)  -- New Hanover -- Valentine -- Fast Travel Marker Valentine Train Station    
    end  

    if Config.WestMarker == true then 
        RequestImap(824748066)     -- New Hanover -- Valentine -- Event Marker Western side of town along path ( -229.93, 946.05, 138.33 )  
        RequestImap(-407068688) -- Skull, Flags and random props at -384.06, 875.9, 115.51 near valentine
        RequestImap(-983957271) -- Skull, Flags and random props at -434.07, 550.15, 103.8 near valentine 
    end 
 
    if Config.YellowHouse == true then 
        RequestImap(610256856) -- window next to front door of house behind valentine gunsmith 
    end 

    if Config.Banners == true then 
        RequestImap(1202020135)   -- New Hanover -- Valentine -- Blank Banners across mainstreet     
    end  
     
    if Config.StormDebris == true then  
        RequestImap(-1878526311)        
        --     val_01__strm_0  -1878526311    scottybeammeup -337.50521850586 736.31860351562 115.46398925782 -- center of road between hotel and encampment
  end 
     
end 

function EnableResouresINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  
    if Config.Cats == true then 
        ActivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end 
    --]]
end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    RemoveImap(-661560211)   -- New Hanover -- Valentine -- Barrels Everywhere?    
    RemoveImap(1202020135)   -- New Hanover -- Valentine -- Blank Banners across mainstreet     
    RemoveImap(30201771)     -- New Hanover -- Valentine -- Water Trough?    
    RemoveImap(-1475403379)  -- New Hanover -- Valentine -- Fencing at farm     
    RemoveImap(731209239)  -- New Hanover -- Valentine -- Fast Travel Marker Valentine Train Station    
    RemoveImap(824748066)     -- New Hanover -- Valentine -- Event Marker Western side of town along path ( -229.93, 946.05, 138.33 )
    RemoveImap(-713587740)    -- New Hanover -- Valentine -- Streets -- Construction Material
    
    RemoveImap(-1217078386)   -- New Hanover -- Valentine -- Wagons -- Blocking road through Valentine
    RemoveImap(-1579403437)   -- New Hanover -- Valentine -- Wagons -- Parked in front of bank
    RemoveImap(517553365)     -- New Hanover -- Valentine -- Wagons -- 2 Wagons in front of and behind of blue house across from Kane's Saloon.

    RemoveImap(805009584)     -- New Hanover -- Valentine -- Barricades -- Western 
    RemoveImap(-560409108)    -- New Hanover -- Valentine -- Barricades -- Eastern
    RemoveImap(-518785376)    -- New Hanover -- Valentine -- Barricades -- Southern
     RemoveImap(-1878526311)        
    --     val_01__strm_0  -1878526311    scottybeammeup -337.50521850586 736.31860351562 115.46398925782 -- center of road between hotel and encampment    
end      

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)   
    if Config.Cats == true then 
        DeactivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end  
    --]]
end     


-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("VMStreet:turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VMStreet:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VMStreet:turnon')
AddEventHandler('VMStreet:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("VMStreet:turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VMStreet:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VMStreet:turnoff')
AddEventHandler('VMStreet:turnoff', function(no_String)  
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
RegisterCommand("takemeto_VMStreet", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VMStreet:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VMStreet:scottybeammeup')
AddEventHandler('VMStreet:scottybeammeup', function(x,y,z)  
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