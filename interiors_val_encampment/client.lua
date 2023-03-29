---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresYMAPS() 
    if Config.Leatherworker == true then 
        RequestImap(-892659042)   -- New Hanover -- Valentine -- Leatherworker on west side of encampment 
    end 
end

function EnableResouresINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)   
    if Config.Windows == true then 
        ActivateInteriorEntitySet(interior, "front_windows") 
    end  
    --]]  
end

----------- turn off the bar ------
function DisableResourcesYMAPS()
    RemoveImap(-892659042)   -- New Hanover -- Valentine -- Leatherworker on west side of encampment 
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)   
    DeactivateInteriorEntitySet(interior, "4_chair_poker_set")   
    --]]  
end     

 
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
        --- cleanup any previous scripts loading content
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)

        -- basically run once after character has loadded in  
        EnableResouresYMAPS() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
        unlockDoors()  
    end
end)

 