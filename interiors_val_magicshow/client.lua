---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server 
Config.Signs = 1 -- options 1 or 2 or 3 or 4 or off
Config.Door = 0 -- options 1 (partial) or 2 (closed) or off
Config.Label = "Val Magic Show"
Config.x = -348.548
Config.y = 699.269
Config.z = 117.885   

----------- turn on the bar ------
function EnableResouresYMAPS()  
    if Config.Signs == 1 then    
        RequestImap(1879779330) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 1
    elseif Config.Signs == 2 then   
        RequestImap(1104143966) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 2
    elseif Config.Signs == 3 then   
        RequestImap(1027093524) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 3 
    elseif Config.Signs == 4 then          
        RequestImap(-1617847332) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 4
    else  
        -- do nothing
    end 
    if Config.Door == 1 then  
        RequestImap(-763477089) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- partial door flap open    
    elseif Config.Door == 2 then   
        RequestImap(317070801) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- full closed flap
    else 
        -- do nothing
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
function DisableResourcesYMAPS() 
    RemoveImap(1879779330) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 1
    RemoveImap(1104143966) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 2
    RemoveImap(1027093524) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 3
    RemoveImap(-1617847332) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- sign outside tent version 4
    RemoveImap(-763477089) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- partial door flap open
    RemoveImap(317070801) -- New Hanover -- Valentine -- Traveling Magic Lantern Show -- full closed flap    
end

function DisableResourcesINTERIORS(x, y, z)      --[[ 
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
RegisterCommand("turnonMagicShow", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "MagicShow:turnonMagicShow", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('MagicShow:turnonMagicShow')
AddEventHandler('MagicShow:turnonMagicShow', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffMagicShow", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "MagicShow:turnoffMagicShow", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('MagicShow:turnoffMagicShow')
AddEventHandler('MagicShow:turnoffMagicShow', function(no_String)  
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
RegisterCommand("takemetoMagicShow", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "MagicShow:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('MagicShow:scottybeammeup')
AddEventHandler('MagicShow:scottybeammeup', function(x,y,z)  
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