---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.Bounty = true  
Config.Barrels = true  
Config.BoardedUp = true  
Config.WallCrumbled = true  
Config.OuterWall = true  
Config.PrisonBreak = true  
Config.Walls = true  


ymaps = {
    {filename ="val_03__interior_val_jail_int_milo_.ymap", name="val_03__interior_val_jail_int_milo_", hash=GetHashKey("val_03__interior_val_jail_int_milo_"), trigger=true, description=""},
    {filename ="val_03_props_lockdown_jail.ymap", name="val_03_props_lockdown_jail", hash=GetHashKey("val_03_props_lockdown_jail"), trigger=false, description=""},    
    {filename ="val_03_default_jail.ymap", name="val_03_default_jail", hash=GetHashKey("val_03_default_jail"), trigger=true, description=""},    
}

Config.Label = "Val Sheriff"
Config.x = -277.183
Config.y = 806.583
Config.z = 119.581   

----------- turn on the bar ------
function EnableResouresIMAP() 
    if Config.Bounty == true then
        RequestImap(952801839)    -- New Hanover -- Valentine -- Sheriffs Office -- Bounty Board
    end 
    if Config.Barrels == true then        
        RequestImap(1804593020)   -- New Hanover -- Valentine -- Sheriffs Office -- Barrels on Step
    end 
    if Config.BoardedUp == true then    
        RemoveImap(-1301569116)   -- New Hanover -- Valentine -- Sheriffs Office -- Boarded up
    end 
    if Config.WallCrumbled == true then    
        RemoveImap(774477221)     -- New Hanover -- Valentine -- Sheriffs Office -- Crumbled Wall parts...
    end 
    if Config.OuterWall == true then    
        RequestImap(1097534152)   -- New Hanover -- Valentine -- Sheriffs Office -- Outer wall 
    end 
    if Config.PrisonBreak == true then    
        RequestImap(696143352)    -- New Hanover -- Valentine -- Prison Break?
    end 
    if Config.Unknow == true then    
        RequestImap(1325716092) -- something relating to Val Sheriff Office
    end 

      
end

function EnableResouresINTERIORS(x, y, z)   
    local interior = GetInteriorAtCoords(x, y, z)  
    if Config.Walls == true then 
        --[[
            local entitySetName  {"val_jail_int_walla", "val_jail_int_wallb", "val_jail_int"} 
            7170 	-1635180876 	val_jail_int 	val_jail_int_walla
            7170 	-1635180876 	val_jail_int 	val_jail_int_wallb        
        --]]
        ActivateInteriorEntitySet(interior, "val_jail_int")  
        ActivateInteriorEntitySet(interior, "val_jail_int_walla")  
        ActivateInteriorEntitySet(interior, "val_jail_int_wallb")  
    end  
end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    -- none for this set
end

function DisableResourcesINTERIORS(x, y, z)   
    local interior = GetInteriorAtCoords(x, y, z)  
    if Config.Cats == true then  
        -- [7170] = {x=-275.41040039063,y=807.46221923828,z=118.87280273438,typeHashId=-1635180876,typeHashName="val_jail_int",rpf="val_jail_int.rpf"},
        DeactivateInteriorEntitySet(interior, "val_jail_int")  
        DeactivateInteriorEntitySet(interior, "val_jail_int_walla")  
        DeactivateInteriorEntitySet(interior, "val_jail_int_wallb")  
    end  
end     


-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("VALSHERRIFF_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VALSHERRIFF:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VALSHERRIFF:turnon')
AddEventHandler('VALSHERRIFF:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("VALSHERRIFF_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VALSHERRIFF:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VALSHERRIFF:turnoff')
AddEventHandler('VALSHERRIFF:turnoff', function(no_String)  
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
RegisterCommand("takemetoemeraldranchbar", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VALSHERRIFF:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VALSHERRIFF:scottybeammeup')
AddEventHandler('VALSHERRIFF:scottybeammeup', function(x,y,z)  
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