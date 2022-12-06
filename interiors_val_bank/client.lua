---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
 
----------- turn on the bar ------
function EnableResouresIMAP() 
    -- none for this set
    if Config.BoardedUp == true then  
	    RequestImap(-1989899190)  -- New Hanover -- Valentine -- Bank Mainstreet -- Boarded Up
    end
    if Config.Unknown == true then  
        RequestImap(-784156210) -- Something relating to valentine bank
    end    
    if Config.Unknown1 == true then  
        RequestImap(-1229144803)        
        --    l_10__strm_0    -1229144803    scottybeammeup -304.35153198242 766.25604248046 121.8659439087 -- bank roof
    end    
    if Config.Unknown2 == true then  
        RequestImap(-1928020839)        
        --     val_02__strm_0  -1928020839    scottybeammeup -305.13513183594 757.31469726562 120.41844940186 -- rear of bank
    end      
      
end

function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z) 
    --ActivateInteriorEntitySet(interior, "val_bank_int_main") 
    if Config.Windows == true then 
        if Config.WindowsType == 1 then  
            ActivateInteriorEntitySet(interior, "val_bank_front_windows")     
        elseif Config.WindowsType == 2 then  
            ActivateInteriorEntitySet(interior, "val_bank_mud5_windowblock")      
        else  
            --- no nothing
        end 
        if Config.Curtains == true then   
            ActivateInteriorEntitySet(interior, "val_bank_int_curtainsopen")  
        else
            ActivateInteriorEntitySet(interior, "val_bank_int_curtainsclosed")   
        end    
    end 
 
    if Config.Settee == true then
        ActivateInteriorEntitySet(interior, "val_bank_settee") 
    end 

    if Config.Vault == true then
        ActivateInteriorEntitySet(interior, "val_bank_vault_dressing")  
    end  

    if Config.Robbery == true then
        if Config.Dynamite == true then
            ActivateInteriorEntitySet(interior, "val_bank_int_vaults_dynamite")  
        end 
        if Config.Safecrack == true then
            ActivateInteriorEntitySet(interior, "val_bank_int_vaults_safe_crack")   
        end 
        if Config.HRSafecrack == true then
            ActivateInteriorEntitySet(interior, "val_bank_int_vaults_safe_crack_highres")   
        end 
        if Config.Damaged == true then
            ActivateInteriorEntitySet(interior, "val_bank_vault_dressing_damage")    
        end 
    end  
end

----------- turn off the bar ------
function DisableResourcesIMAPS()
    -- none for this set
	RemoveImap(-1989899190)  -- New Hanover -- Valentine -- Bank Mainstreet -- Boarded Up    

    RemoveImap(-1229144803)        
    --    l_10__strm_0    -1229144803    scottybeammeup -304.35153198242 766.25604248046 121.8659439087 -- bank roof
    RemoveImap(-1928020839)        
    --     val_02__strm_0  -1928020839    scottybeammeup -305.13513183594 757.31469726562 120.41844940186 -- rear of bank
end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)   
    if Config.Cats == true then  
        -- [12290] = {x=-306.42007446289,y=772.28747558594,z=117.72196960449,typeHashId=1809394080,typeHashName="val_bank_int_main",rpf="val_bank_int.rpf"},
        DeactivateInteriorEntitySet(interior, "val_bank_int_main") 
        DeactivateInteriorEntitySet(interior, "val_bank_front_windows")     
        DeactivateInteriorEntitySet(interior, "val_bank_mud5_windowblock") 
        DeactivateInteriorEntitySet(interior, "val_bank_int_curtainsopen") 
        DeactivateInteriorEntitySet(interior, "val_bank_int_curtainsclosed")     
        DeactivateInteriorEntitySet(interior, "val_bank_settee") 
        DeactivateInteriorEntitySet(interior, "val_bank_vault_dressing")  
        DeactivateInteriorEntitySet(interior, "val_bank_int_vaults_safe_crack_highres") 
        DeactivateInteriorEntitySet(interior, "val_bank_int_vaults_safe_crack")   
        DeactivateInteriorEntitySet(interior, "val_bank_vault_dressing")   
        DeactivateInteriorEntitySet(interior, "val_bank_int_vaults_dynamite")  
    end  
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

 