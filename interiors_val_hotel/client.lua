---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresIMAP() 
    -- none for this set
    if Config.PorchPosts == true then 
        RequestImap(-1588793465)  -- New Hanover -- Valentine -- Motel -- Structure in Front
        RequestImap(1519091923) -- pillars outside hotel
    end     
    if Config.BoardedUp == true then 
        RequestImap(-780819048)    -- New Hanover -- Valentine -- Hotel Mainstreet -- Boarded Up
    end   
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)    
        if row.trigger == true then 
            RequestImap(row.hash)        
        end 
    end 
end

function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)    
    ActivateInteriorEntitySet(interior, "val_hotel_int_main")  
    -- [37122] = {x=-324.23809814453,y=766.96575927734,z=116.40986633301,typeHashId=2118541782,typeHashName="val_hotel_int_main",rpf="val_hotel_int.rpf"},

    if Config.MUD == true then 
        ActivateInteriorEntitySet(interior, "LevDes_Val_MUD3") 
    end     

    if Config.MudCurtain == true then 
        ActivateInteriorEntitySet(interior, "mud3_val_hotel_room_curtain01") 
    end 

     if Config.Curtain1B == 1 then 
        ActivateInteriorEntitySet(interior, "MUD3_val_hotel_room1b_curtain") 
    elseif Config.Curtain1B == 2 then 
        ActivateInteriorEntitySet(interior, "MUD3_val_hotel_room1b_prayercurtain") 
    elseif Config.Curtain1B == 3 then 
        ActivateInteriorEntitySet(interior, "MUD3_val_hotel_room1b_curtain") 
        ActivateInteriorEntitySet(interior, "MUD3_val_hotel_room1b_prayercurtain") 
    else
        --do nothing
    end  
  
    if Config.RentSign == true then 
        ActivateInteriorEntitySet(interior, "val_hotel_int_rentSign")  -- on front desk
    end         

end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    -- none for this set
    RemoveImap(-1588793465)  -- New Hanover -- Valentine -- Motel -- Structure in Front
    RemoveImap(-780819048)    -- New Hanover -- Valentine -- Hotel Mainstreet -- Boarded Up     
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)     
        RemoveImap(row.hash)    
    end 
end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)   
    -- [37122] = {x=-324.23809814453,y=766.96575927734,z=116.40986633301,typeHashId=2118541782,typeHashName="val_hotel_int_main",rpf="val_hotel_int.rpf"},
    DeactivateInteriorEntitySet(interior, "val_hotel_int_main")   
    DeactivateInteriorEntitySet(interior, "LevDes_Val_MUD3") 
    DeactivateInteriorEntitySet(interior, "MUD3_val_hotel_room1b_curtain") 
    DeactivateInteriorEntitySet(interior, "MUD3_val_hotel_room1b_prayercurtain") 
    DeactivateInteriorEntitySet(interior, "mud3_val_hotel_room_curtain01") 
    DeactivateInteriorEntitySet(interior, "val_hotel_int_rentSign") 
end    
 
--[[
RequestImap(-1588793465)  -- New Hanover -- Valentine -- Motel -- Structure in Front
RemoveImap(-780819048)    -- New Hanover -- Valentine -- Hotel Mainstreet -- Boarded Up 

	
--]]

-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("ValHotel_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "ValHotel:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValHotel:turnon')
AddEventHandler('ValHotel:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("ValHotel_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "ValHotel:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValHotel:turnoff')
AddEventHandler('ValHotel:turnoff', function(no_String)  
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

 