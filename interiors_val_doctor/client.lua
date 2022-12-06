---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresIMAP() 
    -- none for this set
    if Config.BoardedUp == true then 
        RequestImap(-981203673)    -- New Hanover -- Valentine -- Doctors Office -- Boarded up    
    end 
    if Config.Chair == 1 then 
        RequestImap(-1049500949) -- Fixed Chair outside Valentine Doctor's Office  
    elseif Config.Chair == 2 then 
        RequestImap(-2009766528) -- Broken Chair outside Valentine Doctor's Office
    end  
end

function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)  
    
    DeactivateInteriorEntitySet(interior, "val_doctor_int")    --- 1026 	-865373967
    if Config.Supplies == 1 then  -- low stock         
        ActivateInteriorEntitySet(interior, "_s_candyBag01x_red_group")   --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_CocaineGum01x_group")     --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_medicine01x_group")    --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_tabacco01x_group")     --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_tonic01x_group")      --- 1026 	-865373967
    elseif Config.Supplies == 2 then    -- med stock 
        ActivateInteriorEntitySet(interior, "_s_inv_CocaineGum01x_dressing")   --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_medicine01x_dressing")    --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_tabacco01x_dressing")    --- 1026 	-865373967 
        ActivateInteriorEntitySet(interior, "_s_inv_tonic01x_dressing")    --- 1026 	-865373967 
    elseif Config.Supplies == 3 then   -- full stock
        ActivateInteriorEntitySet(interior, "_s_candyBag01x_red_group")   --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_CocaineGum01x_dressing")   --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_CocaineGum01x_group")     --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_medicine01x_dressing")    --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_medicine01x_group")    --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_tabacco01x_dressing")    --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_tabacco01x_group")     --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_tonic01x_dressing")    --- 1026 	-865373967
        ActivateInteriorEntitySet(interior, "_s_inv_tonic01x_group")      --- 1026 	-865373967
    else  
        --- do nothing 
    end  
end

----------- turn off the bar ------
function DisableResourcesIMAPS()     
    RemoveImap(-981203673)    -- New Hanover -- Valentine -- Doctors Office -- Boarded up   
end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)  
        --- [1026] = {x=-286.21109008789,y=809.32202148438,z=118.41000366211,typeHashId=-865373967,typeHashName="val_doctor_int",rpf="val_doctor_int.rpf"}, 
        DeactivateInteriorEntitySet(interior, "val_doctor_int")    --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_candyBag01x_red_group")   --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_CocaineGum01x_dressing")   --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_CocaineGum01x_group")     --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_medicine01x_dressing")    --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_medicine01x_group")    --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_tabacco01x_dressing")    --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_tabacco01x_group")     --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_tonic01x_dressing")    --- 1026 	-865373967
        DeactivateInteriorEntitySet(interior, "_s_inv_tonic01x_group")      --- 1026 	-865373967
end    
 
--[[
	[1026] = {x=-286.21109008789,y=809.32202148438,z=118.41000366211,typeHashId=-865373967,typeHashName="val_doctor_int",rpf="val_doctor_int.rpf"},
  
RemoveImap(-981203673)    -- New Hanover -- Valentine -- Doctors Office -- Boarded up 
--]]

-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("ValDoctor_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "ValDoctor:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValDoctor:turnon')
AddEventHandler('ValDoctor:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("ValDoctor_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "ValDoctor:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValDoctor:turnoff')
AddEventHandler('ValDoctor:turnoff', function(no_String)  
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

 