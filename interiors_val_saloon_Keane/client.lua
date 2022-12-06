---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresIMAP()         
    --------------------------------  Keane's Saloon 
    if Config.HayBales == true then
        RequestImap(-2083943324) --hay bales and boxes outside Keane's Saloon in valentine 
    end    
    if Config.Unknown == true then
        RequestImap(666617953) -- Something relating to valentine saloon
    end     
    if Config.Debris == true then 
        RequestImap(610256856) -- New Hanover -- Valentine -- Keane's Saloon -- Debris and Remodle next to Liqour
    end 
    if Config.Unknown1 == true then
        RequestImap(-1740986169) -- Something relating to valentine saloon
        --- val_04__interior_val_saloon2_int_milo_  -1740986169    scottybeammeup -289.67193603516 769.58337402344 119.80627441406 -- behind the law office
    end      
    RequestImap(GetHashKey("val_04__interior_val_saloon2_int_milo_")) 

end

function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)  
    --[[
        [29698] = {x=-241.58325195313,y=769.90649414063,z=117.54511260986,typeHashId=-565068911,typeHashName="val_saloon2_int",rpf="val_saloon2_int.rpf"},
        29698 	-565068911 	val_saloon2_int 	l_00260edcej   
    --]]
    ActivateInteriorEntitySet(interior, "val_saloon2_int")       
    if Config.Unknow == true then  
        ActivateInteriorEntitySet(interior, "l_00260edcej")         
    end   
    ---      val_04__interior_val_saloon2_int_milo_  -1740986169    scottybeammeup -289.67193603516 769.58337402344 119.80627441406 -- behid the law office
         

    ActivateInteriorEntitySet(interior, "val_saloon2_int") -- ydd 

    ActivateInteriorEntitySet(interior, "val_saloon2_int_ref")  -- drawable object 
    ActivateInteriorEntitySet(interior, "val_sal2_details03_decals")  -- drawable object
    ActivateInteriorEntitySet(interior, "val_sal2_ceiling1")  -- drawable object
    ActivateInteriorEntitySet(interior, "val_sal02_shell01")  -- drawable object
    ActivateInteriorEntitySet(interior, "val_sal02_int_shadowproxy")    -- drawable object
    
    --ActivateInteriorEntitySet(interior, "val_saloon2_int") -- collisions
    --ActivateInteriorEntitySet(interior, "val_saloon2_int_txd") -- texture dic
    --ActivateInteriorEntitySet(interior, "val_saloon2_int_shell") -- texture dic

end

-- currently there are two hitching posts. 

----------- turn off the bar ------
function DisableResourcesIMAPS() 
    RemoveImap(-2083943324) -- New Hanover -- Valentine -- Keane's Saloon -- Debris Infront of Liqour
    RemoveImap(610256856) -- New Hanover -- Valentine -- Keane's Saloon -- Debris and Remodle next to Liqour 
    RemoveImap(666617953) -- Something relating to valentine saloon        
    RemoveImap(GetHashKey("val_04__interior_val_saloon2_int_milo_"))  

end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)    
    DeactivateInteriorEntitySet(interior, "val_saloon2_int")     
    DeactivateInteriorEntitySet(interior, "l_00260edcej")         
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

 