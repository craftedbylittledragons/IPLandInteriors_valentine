---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false

Config = {}
Config.Commands = true  -- For testing set to false for live server
Config.TeleportME = true -- For testing set to false for live server

Config.Bench = true  
Config.OldSign = true  
Config.Stool = true  
Config.WhiteSign = true  
Config.PorchPosts = true 
Config.Unknown = false 


Config.arrow = false 
Config.highvlcty = false 
Config.pistol = false 
Config.repeater = false 
Config.revolver = false 
Config.rifle = false 
Config.shotgun = false 
Config.varmint = false 


Config.Label = "Valentine Gun Store"
Config.x = -280.873
Config.y = 781.777
Config.z = 119.725   

----------- turn on the bar ------
function EnableResouresIMAP() 
    if Config.Bench == true then 
        RequestImap(-1905652203) -- New Hanover -- Valentine -- Gunsmith -- Bench Infront
    end 
    if Config.OldSign == true then 
        RequestImap(1936501508) -- New Hanover -- Valentine -- Gunsmith -- big old sign gunshop
    end 
    if Config.Stool == true then 
        RequestImap(2470511) -- New Hanover -- Valentine -- Gunsmith -- Box and Stool Near Pole Outside in yard.
    end 
    if Config.WhiteSign == true then 
        RequestImap(325677491) -- New Hanover -- Valentine -- Gunsmith -- White Sign
    end 
    if Config.PorchPosts == true then 
        RequestImap(-1933617196) -- New Hanover -- Valentine -- Gunsmith -- Structures in front?   
    end 

    if Config.Unknown == true then 
        RequestImap(-951314072) -- New Hanover -- Valentine -- Gunsmith -- Structures in front?   
    end 
     

    interiorsActive = true
end

function EnableResouresINTERIORS(x, y, z)      
    local interior = GetInteriorAtCoords(x, y, z)   
    ActivateInteriorEntitySet(interior, "val_gunsmith_int_main")      
     
    if Config.arrow == true then          
        ActivateInteriorEntitySet(interior, "_s_inv_arrowammo01x_dressing")      
    end  
        
    if Config.highvlcty == true then    
        ActivateInteriorEntitySet(interior, "_s_inv_highvlcty_pstAmmo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_highvlcty_revAmmo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_highvlcty_rifleAmmo01x_group")      
    end 

    if Config.pistol == true then    
        ActivateInteriorEntitySet(interior, "_s_inv_pistolAmmo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_pistol_sign_dressing")      
    end 

    if Config.repeater == true then            
        ActivateInteriorEntitySet(interior, "_s_inv_repeater_sign_dressing")       
        ActivateInteriorEntitySet(interior, "_s_inv_repeatHV_rifleammo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_repeat_rifleammo01x_group")    
    end           

    if Config.revolver == true then            
        ActivateInteriorEntitySet(interior, "_s_inv_revolverAmmo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_revolver_sign_dressing")       
    end 

    if Config.rifle == true then                    
        ActivateInteriorEntitySet(interior, "_s_inv_rifleAmmo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_rifle_sign_dressing")      
    end 
        
    if Config.shotgun == true then   
        ActivateInteriorEntitySet(interior, "_s_inv_shotgunAmmo01x_group")  
        ActivateInteriorEntitySet(interior, "_s_inv_shotgun_sign_dressing")           
        ActivateInteriorEntitySet(interior, "_s_inv_slug_shotgunAmmo01x_group")      
    end 
        
    if Config.varmint == true then   
        ActivateInteriorEntitySet(interior, "_s_inv_varmint_rifleammo01x_group")         
    end 
    --[[
	ActivateInteriorEntitySets(63746, "Valentine gun store", {
		"_s_inv_arrowammo01x_dressing",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_pistolAmmo01x_group",
		"_s_inv_pistol_sign_dressing",
		"_s_inv_repeater_sign_dressing",
		"_s_inv_repeatHV_rifleammo01x_group",
		"_s_inv_repeat_rifleammo01x_group",
		"_s_inv_revolverAmmo01x_group",
		"_s_inv_revolver_sign_dressing",
		"_s_inv_rifleAmmo01x_group",
		"_s_inv_rifle_sign_dressing",
		"_s_inv_shotgunAmmo01x_group",
		"_s_inv_shotgun_sign_dressing",
		"_s_inv_slug_shotgunAmmo01x_group",
		"_s_inv_varmint_rifleammo01x_group"
	})
    --]]
end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    RemoveImap(-1905652203) -- New Hanover -- Valentine -- Gunsmith -- Bench Infront
    RemoveImap(1936501508) -- New Hanover -- Valentine -- Gunsmith -- big old sign gunshop
    RemoveImap(2470511) -- New Hanover -- Valentine -- Gunsmith -- Box and Stool Near It
    RemoveImap(325677491) -- New Hanover -- Valentine -- Gunsmith -- White Sign
    RemoveImap(-1933617196) -- New Hanover -- Valentine -- Gunsmith -- Structures in front?  
    interiorsActive = false  
end

function DisableResourcesINTERIORS(x, y, z)      
    local interior = GetInteriorAtCoords(x, y, z)    
    DeactivateInteriorEntitySet(interior, "val_gunsmith_int_main")  
    DeactivateInteriorEntitySet(interior, "_s_inv_arrowammo01x_dressing")   
    DeactivateInteriorEntitySet(interior, "_s_inv_highvlcty_pstAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_highvlcty_revAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_highvlcty_rifleAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_pistolAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_pistol_sign_dressing")  
    DeactivateInteriorEntitySet(interior, "_s_inv_repeater_sign_dressing")   

    DeactivateInteriorEntitySet(interior, "_s_inv_repeatHV_rifleammo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_repeat_rifleammo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_revolverAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_revolver_sign_dressing")   
    DeactivateInteriorEntitySet(interior, "_s_inv_rifleAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_rifle_sign_dressing")  
    DeactivateInteriorEntitySet(interior, "_s_inv_shotgunAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_shotgun_sign_dressing")   
    DeactivateInteriorEntitySet(interior, "_s_inv_slug_shotgunAmmo01x_group")  
    DeactivateInteriorEntitySet(interior, "_s_inv_varmint_rifleammo01x_group")   

    --[[
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_arrowammo01x_dressing
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_highvlcty_pstAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_highvlcty_revAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_highvlcty_rifleAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_pistolAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_pistol_sign_dressing
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_repeater_sign_dressing
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_repeatHV_rifleammo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_repeat_rifleammo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_revolverAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_revolver_sign_dressing
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_rifleAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_rifle_sign_dressing
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_shotgunAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_shotgun_sign_dressing
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_slug_shotgunAmmo01x_group
        63746 	108187356 	val_gunsmith_int_main 	_s_inv_varmint_rifleammo01x_group    
    --]]
     
end     


-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("VGunS:turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "VGunS:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGunS:turnon')
AddEventHandler('VGunS:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("VGunS:turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "VGunS:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('VGunS:turnoff')
AddEventHandler('VGunS:turnoff', function(no_String)  
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
        interiorsActive = false
        Citizen.Wait(3000)        
        -- because the character is already logged in on resource "re"start
        character_selected = true
    end
end)
 

-----------------------------------------------------
-- Telport admin to the hosue location
-----------------------------------------------------
RegisterCommand("takemeto_VGunS", function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped)        
        if Config.TeleportME == true then 
            TriggerEvent( "VGunS:scottybeammeup", Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.Label)
        end 
    end
end)

RegisterNetEvent('VGunS:scottybeammeup')
AddEventHandler('VGunS:scottybeammeup', function(x,y,z)  
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
    -- interiors loads all of these, so we need to disable them 
    DisableResourcesIMAPS() 
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    interiorsActive = false
    Citizen.Wait(3000)     
    
    if character_selected == true and interiorsActive == false then 
        -- basically run once after character has loadded in  
        EnableResouresIMAP() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)
        interiorsActive = true
    end
end)