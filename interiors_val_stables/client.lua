---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.Stable = true  
Config.Barrels = true  
Config.WaterTrough = true  
Config.Unknown1 = true  
Config.Unknown2 = true  

Config.Label = "Val Stables"
Config.x = -367.652
Config.y = 786.036
Config.z = 114.489

----------- turn on the bar ------
function EnableResouresIMAP() 
    -- none for this set     
    if Config.Barrels == true then 
        RequestImap(-159723514) -- barrels near rock to the right of valentine stables  
    end  
    if Config.WaterTrough == true then 
        RequestImap(30201771)     -- New Hanover -- Valentine -- Water Troughs at stables    
    end  

    if Config.Unknown1 == true then         
        RequestImap(-1724329007)        -- close window when called, otherwise open
        --     l_14_placement_strm_0   -1724329007    scottybeammeup -349.0422668457 784.70080566406 116.79002380372 -- road in front of stables     
    end 
    if Config.Unknown2 == true then         
        RequestImap(-2012814419)        
        --     l_05__strm_0    -2012814419    scottybeammeup -352.48498535156 768.0 118.10903167724 - corner of stables fence, across from butcher           
    end     
end

function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z) 
    if Config.Stable == true then 
        -- [63490] = {x=-367.65255737305,y=786.0361328125,z=114.48915100098,typeHashId=-445781245,typeHashName="val_stable_int",rpf="val_stable_int.rpf"},
        ActivateInteriorEntitySet(interior, "val_stable_int")  
    end  
    
end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    -- none for this set
    RemoveImap(-159723514) -- barrels near rock to the right of valentine stables
    RemoveImap(30201771)     -- New Hanover -- Valentine -- Water Troughs at stables        
    RemoveImap(-2012814419)        
    RemoveImap(-1724329007)    
end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z) 
    -- [63490] = {x=-367.65255737305,y=786.0361328125,z=114.48915100098,typeHashId=-445781245,typeHashName="val_stable_int",rpf="val_stable_int.rpf"},
    DeactivateInteriorEntitySet(interior, "val_stable_int")                   
end     

-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("ValStables:turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "ValStables:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValStables:turnon')
AddEventHandler('ValStables:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("ValStables:turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "ValStables:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValStables:turnoff')
AddEventHandler('ValStables:turnoff', function(no_String)  
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
RegisterCommand("takemeto_ValStables", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "ValStables:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('ValStables:scottybeammeup')
AddEventHandler('ValStables:scottybeammeup', function(x,y,z)  
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