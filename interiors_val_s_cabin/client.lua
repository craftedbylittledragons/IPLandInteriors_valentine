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

Config.Label = "Cabin South of Valentine"
Config.x = -445.177
Config.y = 488.790
Config.z = 97.836   

----------- turn on the cabin ------
function EnableResouresYMAPS()  
    ------------------------House South of Valentine -441.4, 499.04, 98.94
    if Config.Cabin == true then 

        if Config.Construction == 1 then 
            RequestImap(-1926787493) -- house shell finished, inside unfinished
        elseif Config.Construction == 2 then 
            RequestImap(1552753100) -- house shell 1/2 complete -436.32, 498.18, 98.93 
        elseif Config.Construction == 3 then  
            RequestImap(-590227673) -- house construction south of valentine -436.32, 498.18, 98.93 
        elseif Config.Construction == 4 then    
            RequestImap(1471226731)  --- floor and wall framing of construction            
        elseif Config.Construction == 5 then     
            RequestImap(872406077)  --- floor stage of constructions       
        else 
            -- no house
        end 
        
        if Config.Interiors == 1 then 
            RequestImap(-1149736196) -- something   House interior or wagons?     
        elseif Config.Interiors == 2 then 
            RequestImap(-2040493861) -- house south of valentine interior -436.32, 498.18, 98.93  -- under construction 
        elseif Config.Interiors == 3 then       
        else 
            -- do nothing  - 0 no interrior
        end 

        
        if Config.Materials == 1 then      -- finishing up insides
            RequestImap(-1490939730) -- saw horses outside   
        elseif Config.Materials == 2 then  --- mid construction
        elseif Config.Materials == 3 then  -- begining constructions          
            RequestImap(-1382265257) -- outside construction materials  
            RequestImap(1987335384) -- planks outside 
            RequestImap(-1593160175) -- boxes outside house 
            RequestImap(1867048850)  -- green wagon with constructions materials     
        else 
            -- no materials
        end

    end

    if Config.Crops == true then     
        RequestImap(1823159188) -- Crops at the house south of valentine -433.32, 505.72, 98.01 
    end 

    if Config.Fence == true then     
        RequestImap(-442857872) -- fence
        RequestImap(1251358153) -- hitching post
    end 

    if Config.Curtains == 2 then     
        RequestImap(427220750) -- curtains closed
    else 
        -- do nothing
    end     

    if Config.Campsite == 1 then     
        RequestImap(1305415261)  --- campfire at tents
    else 
        -- do nothing
    end 

------------------------House South of Valentine -441.4, 499.04, 98.94
--RequestImap(1987335384) -- house south of valentine planks outside
--RequestImap(-590227673) -- House construction south of valentine -436.32, 498.18, 98.93
RequestImap(1823159188) -- Crops at the house south of valentine -433.32, 505.72, 98.01
--RequestImap(-1593160175) -- boxes outside house south of valentine -436.32, 498.18, 98.93
--RequestImap(-2040493861) -- house south of valentine interior -436.32, 498.18, 98.93
--RequestImap(-1382265257) -- house south of valentine interior -436.32, 498.18, 98.93
RequestImap(1552753100) -- House construction complete -436.32, 498.18, 98.93
--RequestImap(-1149736196) -- something
RequestImap(427220750) -- curtains closed
RequestImap(-1926787493) -- house finished
--RequestImap(1840600379) -- planks of wood, underground?!
--RequestImap(2136811572) -- planks of wood, underground?!
RequestImap(765141292)
RequestImap(1305415261)
RequestImap(-442857872) -- fence
RequestImap(1251358153) -- hitching post
--RequestImap(872406077)
--RequestImap(1867048850)
--RequestImap(-1490939730)
--RequestImap(1471226731)
RequestImap(-1471527776)
------------------------#### END House South of Valentine    

end

function EnableResouresINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  
    ActivateInteriorEntitySet(interior, "val_res_a_int")       
    --]]
end

----------- turn off the cabin ------
function DisableResourcesYMAPS()
        ------------------------House South of Valentine -441.4, 499.04, 98.94
    RemoveImap(1987335384) -- house south of valentine planks outside
    RemoveImap(-590227673) -- House construction south of valentine -436.32, 498.18, 98.93
    RemoveImap(1823159188) -- Crops at the house south of valentine -433.32, 505.72, 98.01
    RemoveImap(-1593160175) -- boxes outside house south of valentine -436.32, 498.18, 98.93
    RemoveImap(-2040493861) -- house south of valentine interior -436.32, 498.18, 98.93
    RemoveImap(-1382265257) -- house south of valentine interior -436.32, 498.18, 98.93
    RemoveImap(1552753100) -- House construction complete -436.32, 498.18, 98.93
    RemoveImap(-1149736196) -- something
    RemoveImap(427220750) -- curtains closed
    RemoveImap(-1926787493) -- house finished 
    RemoveImap(1305415261)
    RemoveImap(-442857872) -- fence
    RemoveImap(1251358153) -- hitching post
    RemoveImap(872406077)
    RemoveImap(1867048850)
    RemoveImap(-1490939730)
    RemoveImap(1471226731) 
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804 
    DeactivateInteriorEntitySet(interior, "val_res_a_int")       
    ]]--
end    
 

-----------------------------------------------------
------ admin commands to control the cabin ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("turnoncabin", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VSC:turnoncabin", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VSC:turnoncabin')
AddEventHandler('VSC:turnoncabin', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffcabin", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VSC:turnoffcabin", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VSC:turnoffcabin')
AddEventHandler('VSC:turnoffcabin', function(no_String)  
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
RegisterCommand("takemetovalcabin", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VSC:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VSC:scottybeammeup')
AddEventHandler('VSC:scottybeammeup', function(x,y,z)  
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