---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false

Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.BoardUp = false 
Config.unknow = false
Config.Closed = false

Config.Fruit = true 
Config.Sign = true

Config.Boxes = false

Config.StockLevel = 3 -- 0 = bare bones 1 = end of month (running low) 2 = mid month good stock 3 = fully stocked

ymaps = {
    {filename ="val_03__interior_val_genstore_milo_.ymap", name="val_03__interior_val_genstore_milo_", hash=GetHashKey("val_03__interior_val_genstore_milo_"), trigger=true, description=""},
}

Config.Label = "Valentine General Store"
Config.x = -323.411
Config.y = 801.078
Config.z = 117.631   

----------- turn on the bar ------
function EnableResouresIMAP() 
    -- none for this set
    if Config.BoardUp == true then  
        RequestImap(56708243)     -- New Hanover -- Valentine -- Green House -- General Store -- Boarded up? 
	    RequestImap(1228600352)   -- New Hanover -- Valentine -- General Store -- Boarded Up
    end 
    if Config.Closed == true then  
	    RequestImap(406334892)    -- New Hanover -- Valentine -- General Store -- Closed Sign on Door 
    end 
        
    if Config.Fruit == true then  
	    RequestImap(1573766063)   -- New Hanover -- Valentine -- General Store -- Fruit in front? 
    end 

    if Config.unknow == true then  
	    RequestImap(-554932707)   -- New Hanover -- Valentine -- General Store -- Something Regarding It 
        -- increases the ipl flicker in the genstore, unsure what it is yet. I don't see any changes or clear overlays
        RequestImap(897455211) -- something regarding the saloon and store?
        RequestImap(1285430299) -- Crates outside saloon and gen store?
    end  

    if Config.Sign == true then  
	    RequestImap(135886022)    -- New Hanover -- Valentine -- General Store -- Sign in Front  
    end 

    if Config.Boxes == true then  
        RequestImap(2095116685)    -- New Hanover -- Valentine -- Green House -- General Store -- Saloon Mainstreet -- Supplies/Boxes in Front 
    end 
 
    -- there is an ipl flicker at the cash register in the gen store. source unknow yet.
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)    
        if row.trigger == true then 
            RequestImap(row.hash)        
        end 
    end 
end

function EnableResouresINTERIORS(x, y, z)    
    local interior = GetInteriorAtCoords(x, y, z)  
	--ActivateInteriorEntitySet(interior, "val_genstore") 
    ActivateInteriorEntitySet(interior, "val_genstore_night_light")  

    if Config.StockLevel == 0 then    
        -- default map, no extras
    end 
    
    if Config.StockLevel == 2  or  Config.StockLevel == 3 then    
        ActivateInteriorEntitySet(interior, "_p_apple01x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_bread06x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_carrots_01x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_cigar02x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_cigarettebox01x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_corn02x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_int_fishing01_dressing")  
        ActivateInteriorEntitySet(interior, "_p_package01x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_pear_02x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_tin_pomade01x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_tin_soap01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_biscuits01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_canBeans01_dressing") 
        ActivateInteriorEntitySet(interior, "_s_canCorn01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_canPeaches01x_dressing") 
        ActivateInteriorEntitySet(interior, "_p_apple01x_dressing")
        ActivateInteriorEntitySet(interior, "_s_chocolateBar02x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_coffeeTin01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_crackers01x_dressing")  
        ActivateInteriorEntitySet(interior, "_s_cricketTin01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_gunOil01x_dressing")  
        ActivateInteriorEntitySet(interior, "_s_inv_baitHerb01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_inv_baitMeat01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_inv_gin01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_inv_horsePills01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_inv_pocketwatch04x_dressing")   
        ActivateInteriorEntitySet(interior, "_s_inv_rum01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_inv_tabacco01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_inv_whiskey01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_oatcakes01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_offal01x_dressing") 
        ActivateInteriorEntitySet(interior, "_s_wormCan01x_dressing") 
    end 
   
    if Config.StockLevel == 1  or  Config.StockLevel == 3 then    
        ActivateInteriorEntitySet(interior, "_p_apple01x_group")  
        ActivateInteriorEntitySet(interior, "_p_bread06x_group")  
        ActivateInteriorEntitySet(interior, "_p_carrots_01x_group")  
        ActivateInteriorEntitySet(interior, "_p_cigar02x_group")   
        ActivateInteriorEntitySet(interior, "_p_cigarettebox01x_group")       
        ActivateInteriorEntitySet(interior, "_p_corn02x_group")    
        ActivateInteriorEntitySet(interior, "_p_package01x_group")  
        ActivateInteriorEntitySet(interior, "_p_pear_02x_group")       
        ActivateInteriorEntitySet(interior, "_p_tin_pomade01x_group")  
        ActivateInteriorEntitySet(interior, "_p_tin_soap01x_group")  
        ActivateInteriorEntitySet(interior, "_s_biscuits01x_group")      
        ActivateInteriorEntitySet(interior, "_s_canBeans01x_group")      
        ActivateInteriorEntitySet(interior, "_s_canCorn01x_group")    
        ActivateInteriorEntitySet(interior, "_s_candyBag01x_red_group")       
        ActivateInteriorEntitySet(interior, "_s_canPeaches01x_group")    
        ActivateInteriorEntitySet(interior, "_s_cheeseWedge1x_group")       
        ActivateInteriorEntitySet(interior, "_s_chocolateBar02x_group")     
        ActivateInteriorEntitySet(interior, "_s_coffeeTin01x_group")     
        ActivateInteriorEntitySet(interior, "_s_crackers01x_group")        
        ActivateInteriorEntitySet(interior, "_s_cricketTin01x_group")    
        ActivateInteriorEntitySet(interior, "_s_gunOil01x_group")     
        ActivateInteriorEntitySet(interior, "_s_inv_baitherb01x_group") 
        ActivateInteriorEntitySet(interior, "_s_inv_baitmeat01x_group")     
        ActivateInteriorEntitySet(interior, "_s_inv_gin01x_group")     
        ActivateInteriorEntitySet(interior, "_s_inv_horsePills01x_group")     
        ActivateInteriorEntitySet(interior, "_s_inv_pocketWatch04x_group")   
        ActivateInteriorEntitySet(interior, "_s_inv_rum01x_group")     
        ActivateInteriorEntitySet(interior, "_s_inv_tabacco01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_whiskey01x_group")      
        ActivateInteriorEntitySet(interior, "_s_oatcakes01x_group")      
        ActivateInteriorEntitySet(interior, "_s_offal01x_group")   
        ActivateInteriorEntitySet(interior, "_s_saltedbeef01x_group") 
        ActivateInteriorEntitySet(interior, "_s_saltedbeef02x_group")  
        ActivateInteriorEntitySet(interior, "_s_wormcan01x_group")      
    end 
end
 
----------- turn off the bar ------
function DisableResourcesIMAPS() 
    RemoveImap(56708243)     -- New Hanover -- Valentine -- Green House -- General Store -- Boarded up? 
    RemoveImap(1228600352)   -- New Hanover -- Valentine -- General Store -- Boarded Up 
    RemoveImap(1573766063)   -- New Hanover -- Valentine -- General Store -- Fruit in front? 
    RemoveImap(-554932707)   -- New Hanover -- Valentine -- General Store -- Something Regarding It 
    RemoveImap(406334892)    -- New Hanover -- Valentine -- General Store -- Closed Sign on Door  
    RemoveImap(135886022)    -- New Hanover -- Valentine -- General Store -- Sign in Front    
    RemoveImap(2095116685)    -- New Hanover -- Valentine -- Green House -- General Store -- Saloon Mainstreet -- Supplies/Boxes in Front  
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)     
        RemoveImap(row.hash)    
    end      
end
 

function DisableResourcesINTERIORS(x, y, z)      
     local interior = GetInteriorAtCoords(x, y, z) 
     --	[45826] = {x=-323.5319519043,y=801.72698974609,z=116.86100769043,typeHashId=-1621677575,typeHashName="val_genstore",rpf="val_genstore_int.rpf"},
 
	DeactivateInteriorEntitySet(interior, "val_genstore") 
    DeactivateInteriorEntitySet(interior, "val_genstore_night_light") 

    
    DeactivateInteriorEntitySet(interior, "_p_apple01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_apple01x_group") 

    DeactivateInteriorEntitySet(interior, "_p_bread06x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_bread06x_group") 

    DeactivateInteriorEntitySet(interior, "_p_carrots_01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_carrots_01x_group") 

    DeactivateInteriorEntitySet(interior, "_p_cigar02x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_cigar02x_group")  

    DeactivateInteriorEntitySet(interior, "_p_cigarettebox01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_cigarettebox01x_group")  
    
    DeactivateInteriorEntitySet(interior, "_p_corn02x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_corn02x_group")  

    DeactivateInteriorEntitySet(interior, "_p_int_fishing01_dressing")  

    DeactivateInteriorEntitySet(interior, "_p_package01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_package01x_group") 

    DeactivateInteriorEntitySet(interior, "_p_pear_02x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_pear_02x_group")  
    
    DeactivateInteriorEntitySet(interior, "_p_tin_pomade01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_tin_pomade01x_group") 

    DeactivateInteriorEntitySet(interior, "_p_tin_soap01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_p_tin_soap01x_group") 

    DeactivateInteriorEntitySet(interior, "_s_biscuits01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_biscuits01x_group")   
    
    DeactivateInteriorEntitySet(interior, "_s_canBeans01x_group") 
    DeactivateInteriorEntitySet(interior, "_s_canBeans01_dressing")
    
    DeactivateInteriorEntitySet(interior, "_s_canCorn01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_canCorn01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_candyBag01x_red_group")  
    
    DeactivateInteriorEntitySet(interior, "_s_canPeaches01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_canPeaches01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_cheeseWedge1x_group") 
    DeactivateInteriorEntitySet(interior, "_p_apple01x_dressing")
    
    DeactivateInteriorEntitySet(interior, "_s_chocolateBar02x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_chocolateBar02x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_coffeeTin01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_coffeeTin01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_crackers01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_crackers01x_group")
         
    DeactivateInteriorEntitySet(interior, "_s_cricketTin01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_cricketTin01x_group")
   
    DeactivateInteriorEntitySet(interior, "_s_gunOil01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_gunOil01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_inv_baitHerb01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_baitherb01x_group")
    DeactivateInteriorEntitySet(interior, "_s_inv_baitMeat01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_baitmeat01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_inv_gin01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_gin01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_inv_horsePills01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_horsePills01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_inv_pocketwatch04x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_pocketWatch04x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_inv_rum01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_rum01x_group")
    
    DeactivateInteriorEntitySet(interior, "_s_inv_tabacco01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_tabacco01x_group") 

    DeactivateInteriorEntitySet(interior, "_s_inv_whiskey01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_inv_whiskey01x_group") 
    
    DeactivateInteriorEntitySet(interior, "_s_oatcakes01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_oatcakes01x_group") 
    
    DeactivateInteriorEntitySet(interior, "_s_offal01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_offal01x_group") 
  
    DeactivateInteriorEntitySet(interior, "_s_saltedbeef01x_group") 
    DeactivateInteriorEntitySet(interior, "_s_saltedbeef02x_group") 
    
    DeactivateInteriorEntitySet(interior, "_s_wormCan01x_dressing") 
    DeactivateInteriorEntitySet(interior, "_s_wormcan01x_group")        
end    
  
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("turnonVGENST", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VGENST:turnonVGENST", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGENST:turnonVGENST')
AddEventHandler('VGENST:turnonVGENST', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("turnoffVGENST", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VGENST:turnoffVGENST", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGENST:turnoffVGENST')
AddEventHandler('VGENST:turnoffVGENST', function(no_String)  
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
-- Telport admin to the house location
-----------------------------------------------------
RegisterCommand("takemeto_VGENST", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VGENST:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VGENST:scottybeammeup')
AddEventHandler('VGENST:scottybeammeup', function(x,y,z)  
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
 

--------------------------------------------------
-- Teleport Cofiguration  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F }
Config.TeleporterPrompt = "Use Door [~e~"..  Config.definedkey.named  .."~q~]"
Config.TeleportDistance = 0.5

Config.TeleportEnter_On = false 
Config.EnterStoreRoom = {x = -326.084, y = 805.856, z = 117.631, h = 359.987 }

Config.TeleportExit_On = false 
Config.ExitStoreRoom = {x = -326.378, y = 807.442, z = 117.644, h = 150.678 }

Config.WaitTimer = 1000
Config.FadeTimer = 2
--------------------------------------------------
-- Teleporters -----------------------------------
-------------------------------------------------- 
-- Enter Scene 
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)    
        local player_coords = GetEntityCoords(PlayerPedId())   
        if Config.TeleportEnter_On == true then       
            if (Vdist(player_coords.x, player_coords.y, player_coords.z, Config.EnterStoreRoom.x, Config.EnterStoreRoom.y, Config.EnterStoreRoom.z) < Config.TeleportDistance) then -- cords for door go here
                
                DrawTxt(Config.TeleporterPrompt, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
                if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
                    local player = PlayerPedId() 
                    DoScreenFadeOut(Config.FadeTimer)
                    Wait(Config.WaitTimer) 		
                    FreezeEntityPosition(player, true) -- freeze player  -- Player can fall through the map in certain situations	
                    SetEntityCoords(player, Config.ExitStoreRoom.x, Config.ExitStoreRoom.y, Config.ExitStoreRoom.z)
                    SetEntityHeading(player, Config.EnterStoreRoom.h)

                    Wait(Config.WaitTimer) -- wait for ymap to load 
                    DoScreenFadeIn(Config.FadeTimer) 
                    FreezeEntityPosition(player, false) -- unfreeze player. 
                end
            end
        end
    end
end)  -- close thread 
            
           
-- Exit Scene
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1) 
        local player_coords = GetEntityCoords(PlayerPedId())  
        if Config.TeleportExit_On == true then   
            if (Vdist(player_coords.x, player_coords.y, player_coords.z, Config.ExitStoreRoom.x, Config.ExitStoreRoom.y, Config.ExitStoreRoom.z) < Config.TeleportDistance) then -- cords for door go here
                DrawTxt(Config.TeleporterPrompt, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
                if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
                    local player = PlayerPedId() 
                    DoScreenFadeOut(Config.FadeTimer)
                    Wait(Config.WaitTimer) 		
                    FreezeEntityPosition(player, true) -- freeze player  -- Player can fall through the map in certain situations	
                    SetEntityCoords(player, Config.EnterStoreRoom.x, Config.EnterStoreRoom.y, Config.EnterStoreRoom.z)
                    SetEntityHeading(player, Config.ExitStoreRoom.h)

                    Wait(Config.WaitTimer) -- wait for ymap to load 
                    DoScreenFadeIn(Config.FadeTimer) 
                    FreezeEntityPosition(player, false) -- unfreeze player. 
                end
            end
        end
    end
end)  -- close thread 


--------------------------------------------------
-- Printed Messages on Screen --------------------
--------------------------------------------------
--- These are from syn_county scripts, and have not been modified
--- This one stays positioned in the center of the screen largish text.
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    Citizen.InvokeNative(0xADA9255D, 10);
    DisplayText(str, x, y)
 end 
 
 --- This one is smaller and attached to a fixed point, regardless of camera angle. 
 function DrawText3D(x, y, z, text)
     local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
     local px,py,pz=table.unpack(GetGameplayCamCoord())  
     local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
     local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
     if onScreen then
       SetTextScale(0.30, 0.30)
       SetTextFontForCurrentCommand(1)
       SetTextColor(255, 255, 255, 215)
       SetTextCentre(1)
       DisplayText(str,_x,_y)
       local factor = (string.len(text)) / 225
       DrawSprite("feeds", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
     end
 end
