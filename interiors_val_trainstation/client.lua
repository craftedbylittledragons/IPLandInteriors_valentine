---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresIMAP() 
    if Config.Track == true then  
        RequestImap(2077623691)   -- New Hanover -- Valentine -- Railroad -- Track Bed - Full Legnth
    end 
    if Config.Bridge == true then  
        RequestImap(-794503195) -- New Hanover -- Valentine -- Railroad -- Broken Bridge and Pieces Pieces  -- 520 1754 187
    end 
end

function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)   
	-- [68098] = {x=-180.83720397949,y=626.54919433594,z=113.26907348633,typeHashId=2123973130,typeHashName="val_trainstn_int",rpf="val_trainstn_int.rpf"}, 
    ActivateInteriorEntitySet(interior, "val_trainstn_int") 
end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    RemoveImap(2077623691)   -- New Hanover -- Valentine -- Railroad -- Track Bed - Full Legnth
    RemoveImap(-794503195) -- New Hanover -- Valentine -- Railroad -- Broken Bridge and Pieces Pieces  -- 520 1754 187   
end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)   
    DeactivateInteriorEntitySet(interior, "val_trainstn_int")   
end    
  

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
        DisableResourcesIMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)

        -- basically run once after character has loadded in  
        EnableResouresIMAP() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
        unlockDoors()  
    end
end)

 