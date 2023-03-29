---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

------- Default setup ----------------------
-- default all off = three recently dug and filled in graves one pile of dirt near church. 
-- dirt on, three files of dirt near the the above three graves.
Config.Dirt = false 
    Config.Dirt_1 = true 
    Config.Dirt_2 = true 
    Config.Dirt_3 = true 

Config.DugGrave = false 
    Config.DugGrave_1 = true 
    Config.DugGrave_2 = true 

Config.Coffin = false 
    Config.Coffin_1 = true 
    Config.Coffin_2 = true 
    Config.Coffin_3 = true 

Config.Grass = false
  
Config.Label = "Graves of Valentine"
Config.x = -238.133
Config.y = 820.310
Config.z = 123.652   

----------- turn on the cabin ------
function EnableResouresYMAPS()  
------------------------House South of Valentine -441.4, 499.04, 98.94
    if Config.Dirt == true then  
        if Config.Dirt_1 == true then  
            RequestImap(-1902184438)   -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #1
        else            
            RemoveImap(-1902184438)   -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #1
        end 
        if Config.Dirt_2 == true then          
            RequestImap(740012805)     -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #2
        end 
        if Config.Dirt_3 == true then      
            RequestImap(1236921921)    -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #3     
        end 
    end

    if Config.DugGrave == true then     
        if Config.DugGrave_1 == true then     
            RequestImap(1886602884)    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #1
        else 
            RemoveImap(1886602884)    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #1
        end 
        if Config.DugGrave_2 == true then         
            RequestImap(1963724330)    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #2
        end 
    end 

    if Config.Coffin == true then    

        if Config.Coffin_1 == true then      
            RequestImap(-1871745961)   -- New Hanover -- Valentine -- Cemetery -- Coffin in Left Grave
        end 

        if Config.Coffin_2 == true then      
            RequestImap(2125514970)    -- New Hanover -- Valentine -- Cemetery -- Coffin in Center Grave
        end 

        if Config.Coffin_3 == true then      
            RequestImap(267578156)     -- New Hanover -- Valentine -- Cemetery -- Coffin in Right Grave        
        end 
    end 

    if Config.Grass == true then        
        RequestImap(-391187090)    -- New Hanover -- Valentine -- Cemetery -- Grass on Grave 
    else 
        RemoveImap(-391187090)    -- New Hanover -- Valentine -- Cemetery -- Grass on Grave  
    end 

--------------------------------                                   ############# -- Valentine Cemetery                   -- ###############                                       ----------------------
RemoveImap(-391187090) -- Grass on grave Valentine cemetery
RemoveImap(-1902184438) -- dirt pile from grave dug Valentine cemetery
RemoveImap(1886602884)  -- pre-grave dug grass over
RemoveImap(740012805) -- dirt pile from grave dug Valentine cemetery
RemoveImap(1236921921) -- dirt pile from grave dug Valentine cemetery
RemoveImap(1963724330) -- pre-grave grass... if graves present, remove
RemoveImap(-1871745961) -- Coffin in left grave, Valentine
RemoveImap(2125514970) -- Coffin in center grave, Valentine
RemoveImap(267578156) -- Coffin in right grave, Valentine
RequestImap(-555917871) -- something relating to valentine cemetary
RequestImap(-1801047945) -- thomas downes gravestone in valentine cemetary
RequestImap(325677491) -- Grave in valentine -229.31, 826.96, 124.45
RequestImap(-689352221)
RequestImap(-451832572)
RequestImap(-1349539327)
RequestImap(-1640200357)
RequestImap(-2127665186)
RequestImap(1854980771)
RequestImap(1513363974)
RequestImap(-1280884206)
--------------------------------  
    
end

function EnableResouresINTERIORS(x, y, z)  
    --[[ -- template
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804 
    ActivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    --]]
end

----------- turn off the cabin ------
function DisableResourcesYMAPS()  
    RemoveImap(-1902184438)   -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #1 
    RemoveImap(740012805)     -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #2 
    RemoveImap(1236921921)    -- New Hanover -- Valentine -- Cemetery -- Dirt Pile from Grave Dug #3      
    RemoveImap(1886602884)    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #1 
    RemoveImap(1963724330)    -- New Hanover -- Valentine -- Cemetery -- Pre-Grave Dug #2 
    RemoveImap(-1871745961)   -- New Hanover -- Valentine -- Cemetery -- Coffin in Left Grave 
    RemoveImap(2125514970)    -- New Hanover -- Valentine -- Cemetery -- Coffin in Center Grave 
    RemoveImap(267578156)     -- New Hanover -- Valentine -- Cemetery -- Coffin in Right Grave 
    RemoveImap(-391187090)    -- New Hanover -- Valentine -- Cemetery -- Grass on Grave  
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[ -- template
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804 
    DeactivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    --]]
end    
 

-----------------------------------------------------
------ admin commands to control the cabin ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("turnoncabin", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VSG:turnoncabin", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VSG:turnoncabin')
AddEventHandler('VSG:turnoncabin', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffcabin", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VSG:turnoffcabin", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VSG:turnoffcabin')
AddEventHandler('VSG:turnoffcabin', function(no_String)  
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
RegisterCommand("takemetovalgraves", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VSG:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VSG:scottybeammeup')
AddEventHandler('VSG:scottybeammeup', function(x,y,z)  
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