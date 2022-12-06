---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false

Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.Construction = 2 -- under construction = 1 compeleted =2
Config.BoardedUp = false -- true on  - false  off
Config.Lamp = true -- true on  - false  off    - caution double lamp right now?
Config.Chair = true -- true on  - false  off

-- I can't tell what these do yet, but the green build is the focal point for them
Config.Restaurant = false -- true on  - false  off
Config.Tree1 = false -- true on  - false  off
Config.Tree2 = false -- true on  - false  off
Config.Unknown1 = false -- true on  - false  off
Config.Unknown2 = false -- true on  - false  off

Config.Label = "Valentine Green House"
Config.x = -294.053
Config.y = 797.377
Config.z = 118.403   

----------- turn on the bar ------
function EnableResouresIMAP()  
    if Config.Construction == 1 then 
	    RequestImap(1081087978)    -- New Hanover -- Valentine -- Green House -- (Do Not Load Both(1/2)Building and Restaurant mainstreet - Pre-paint, almost completed stage(Help wanted sign)
    else 
	    RequestImap(903666582)    -- New Hanover -- Valentine -- Green House -- (Do Not Load Both(2/2)Building and Restaurant Mainstreet-Painted, completed stage. Keane's Rooms for Rent
    end 
    Citizen.Wait(3000)

    if Config.BoardedUp == true then 
	    RequestImap(282485265)     -- New Hanover -- Valentine -- Green House -- Building boarded up 
    else
        -- do nothing
    end 
    Citizen.Wait(3000)

    if Config.Lamp == true then 
	    RequestImap(637874199)     -- New Hanover -- Valentine -- Green House -- Building Lamp
    else
        -- do nothing
    end  
    Citizen.Wait(3000)

    if Config.Tree1 == true then 
        RequestImap(31880119)  --true match: j_09__trees_0 31880119 -297.67965698242 819.28039550782 123.32624816894                
    else
        -- do nothing
    end  
    Citizen.Wait(3000)

    if Config.Tree2 == true then 
        RequestImap(-1521525254)  -- New Hanover -- Valentine -- Green House -- Exterior Trees and Flowers 1(Run 1 and 2 together)        
        RequestImap(-761186147)   -- New Hanover -- Valentine -- Green House -- Exterior Trees and Flowers 2(Run 1 and 2 together)
    else
        -- do nothing
    end  
    Citizen.Wait(3000)

    if Config.Restaurant == true then    
        RequestImap(-1892595931) -- Something relating to valentine restaurant  
        -- true match: -1892595931 -338.67895507812 790.36340332032 119.26530456542        
    else
        -- do nothing
    end 
    Citizen.Wait(3000)

    if Config.Chair == true then         
        RequestImap(-1744253204) --  green house in valentine, location of chair on porch -- it's the chair
        -- true match: -1744253204 scottybeammeup -292.50619506836 801.41845703125 118.86724090576
        Citizen.Wait(3000)    
    else
        -- do nothing
    end    

    if Config.Unknown1 == true then          
        RequestImap(-1781246069) -- something relating to green house in valentine
        -- true match: -1781246069 scottybeammeup -292.50619506836 801.41845703125 118.86724090576
        Citizen.Wait(3000)  
    else
        -- do nothing
    end      

    if Config.Unknown2 == true then            
        RequestImap(1186533019) -- something relating to green house in valentine
        -- true match:             1186533019      -292.74053955078        783.86340332032 118.87322998046        
        Citizen.Wait(3000)
    else
        -- do nothing
    end  
    --- the plant and white bench on the second are in a different IPL that remains on when this script is restarted.
    -- the buildings doors have a white ipl, I am unsure how to access it yet.
    -- bench and chairs are seperate as well (front porch)
end

function EnableResouresINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804
    if Config.Cats == true then 
        ActivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end 
    --]]
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804
    ActivateInteriorEntitySet(interior, "val_03_room4rent_enlssum_dtls") 
    ActivateInteriorEntitySet(interior, "val_03_room4rent_enlssum") 
    ActivateInteriorEntitySet(interior, "val_03_redrest_endlssum+hidr")  
    ActivateInteriorEntitySet(interior, "val_03_rst_endlssum_em_hd")  
    ActivateInteriorEntitySet(interior, "val_03_rst_endlssum_em_hd+hidr")                 
end

----------- turn off the bar ------
function DisableResourcesIMAPS()  
	RemoveImap(1081087978)    -- New Hanover -- Valentine -- Green House -- (Do Not Load Both(1/2)Building and Restaurant mainstreet - Pre-paint, almost completed stage(Help wanted sign)
	RemoveImap(282485265)     -- New Hanover -- Valentine -- Green House -- Building boarded up
	RemoveImap(903666582)    -- New Hanover -- Valentine -- Green House -- (Do Not Load Both(2/2)Building and Restaurant Mainstreet-Painted, completed stage. Keane's Rooms for Rent
	RemoveImap(637874199)     -- New Hanover -- Valentine -- Green House -- Building Lamp 
    RemoveImap(-1521525254)  -- New Hanover -- Valentine -- Green House -- Exterior Trees and Flowers 1(Run 1 and 2 together)
    RemoveImap(-761186147)   -- New Hanover -- Valentine -- Green House -- Exterior Trees and Flowers 2(Run 1 and 2 together)
    RemoveImap(31880119)  -- j_09__trees_0 -- val behind the green house.
    RemoveImap(-1781246069)
    RemoveImap(-1744253204) 
end

function DisableResourcesINTERIORS(x, y, z)  
    --[[
    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804
    if Config.Cats == true then 
        DeactivateInteriorEntitySet(interior, "here_kitty_4_props")  -- 1958681082   -- dragon -- this spawns the cats at emerald 
    end 
    --]] 

    local interior = GetInteriorAtCoords(x, y, z)  --- teleportme 1450.0452 372.4734 89.6804
    DeactivateInteriorEntitySet(interior, "val_03_room4rent_enlssum_dtls") 
    DeactivateInteriorEntitySet(interior, "val_03_room4rent_enlssum") 
    DeactivateInteriorEntitySet(interior, "val_03_redrest_endlssum+hidr")  
    DeactivateInteriorEntitySet(interior, "val_03_rst_endlssum_em_hd")  
    DeactivateInteriorEntitySet(interior, "val_03_rst_endlssum_em_hd+hidr")      
end    
 

-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("turnonVGH", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VGH:turnonVGH", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGH:turnonVGH')
AddEventHandler('VGH:turnonVGH', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffVGH", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VGH:turnoffVGH", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGH:turnoffVGH')
AddEventHandler('VGH:turnoffVGH', function(no_String)  
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
RegisterCommand("takemeto_VGH", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VGH:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VGH:scottybeammeup')
AddEventHandler('VGH:scottybeammeup', function(x,y,z)  
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


    local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

    local interiorId = GetInteriorFromEntity(playerPed)    
    if interiorId ~= 0 then    
      local x, y, z = GetInteriorPosition(interiorId)    
      print("current interior " .. interiorId .. " position is: " .. vec(x, y, z))    
    end    
    
    if interiorId ~= 0 then
        local count = GetInteriorRoomCount(interiorId)      
        print("interior " .. interiorId .. "has " .. count .. " rooms")      
    end    

    GetRoomKeyFromEntity(playerPed)
    local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)    
    if roomId ~= -1 then    
      print("current room index is: " .. roomId)    
    end 

    local interiorId --[[ Interior ]] =	GetInteriorAtCoords( coords.x --[[ number ]], coords.y --[[ number ]], coords.z --[[ number ]])
    if interiorId ~= 0 then  
        print("current interior " .. interiorId .. " position is: " .. vec(coords.x, coords.y, coords.z))    
    end 

    --ActivateInteriorEntitySet(interior, "val_saloon_int_txd")      
    txdHash = GetHashKey("val_saloon_int_txd")
    p1 = true
    --RequestStreamedTxd( 	txdHash --[[ Hash ]],   	p1 --[[ boolean ]]  ) -- RequestStreamedTxd     0xDB1BD07FB464584D
    Citizen.InvokeNative(0xDB1BD07FB464584D, txdHash, p1)


end)