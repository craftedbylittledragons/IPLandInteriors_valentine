---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false
  
-----------------------------------------------------
-- Main thread that controls the script
-----------------------------------------------------
Citizen.CreateThread(function()
    while character_selected == false do 
        Citizen.Wait(1000)
    end  
    while Config.loaded == false do 
        Citizen.Wait(1000)
    end   
----- YMAPS ----------
    for key,row in pairs(Config.ymap) do 
        if row.name == "" then 
            if row.filename ~= "" then 
                row.name = row.filename
            end 
        end 
        if row.hash == "" then 
            row.hash = GetHashKey(row.name)
        end 
        --print(key, row, row.hash)
    end  

----- Interiors ----------    
    for key,row in pairs(Config.interiors) do 
        if row.name == "" then 
            if row.filename ~= "" then 
                row.name = row.filename
            end 
        end 
        if row.hash == "" then 
            row.hash = GetHashKey(row.name)
        end 
        --print(key, row, row.hash)
    end  

----- ytd ---------- 
    for key,row in pairs(Config.ytd) do 
        if row.name == "" then 
            if row.filename ~= "" then 
                row.name = row.filename
            end 
        end 
        if row.hash == "" then 
            row.hash = GetHashKey(row.name)
        end 
        --print(key, row, row.hash)
    end 

----- ydr ---------- 
    for key,row in pairs(Config.ydr) do 
        if row.name == "" then 
            if row.filename ~= "" then 
                row.name = row.filename
            end 
        end 
        if row.hash == "" then 
            row.hash = GetHashKey(row.name)
        end 
        --print(key, row, row.hash)
    end 
    
----- yft ---------- 
    for key,row in pairs(Config.yft) do 
        if row.name == "" then 
            if row.filename ~= "" then 
                row.name = row.filename
            end 
        end 
        if row.hash == "" then 
            row.hash = GetHashKey(row.name)
        end 
        --print(key, row, row.hash)
    end     

----- ytd_hidef ---------- 
    for key,row in pairs(Config.ytd_hidef) do 
        if row.name == "" then 
            if row.filename ~= "" then 
                row.name = row.filename
            end 
        end 
        if row.hash == "" then 
            row.hash = GetHashKey(row.name)
        end 
        --print(key, row, row.hash)
    end   
end) 

----- YMAPS ----------
function EnableResouresYMAPS()  
    for key,row in pairs(Config.ymap) do  
        --print(key, row, row.hash)
        if row.trigger == true then 
            RequestImap(row.hash)   
        end 
    end      
end
function DisableResourcesYMAPS()    
    for key,row in pairs(Config.ymap) do 
        --print(key, row, row.hash) 
        RemoveImap(row.hash)    
    end    
end


----- INTERIORS ----------
function EnableResouresINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)  
    for key,row in pairs(Config.interiors) do  
        --print(key, row, row.hash)
        if row.trigger == true then 
            if row.parent_name == "StockLevel" then 
                if tonumber(row.level) <= tonumber(Config.StockLevel) then                         
                    ActivateInteriorEntitySet(interior, row.name) 
                end 
            else  
                ActivateInteriorEntitySet(interior, row.name)                     
            end 
        end 
    end  
end
function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)  
    for key,row in pairs(Config.interiors) do 
        --print(key, row, row.hash)  
        DeactivateInteriorEntitySet(interior, row.name) 
    end  
end    
  
 
-----------------------------------------------------
---remove all on resource stop---
-----------------------------------------------------
AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then      
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
    while Config.loaded == false do 
        Citizen.Wait(1000)
    end   
    if character_selected == true and interiorsActive == false then 
        --- cleanup any previous scripts loading content
        DisableResourcesYMAPS() 
        DisableResourcesINTERIORS(Config.x, Config.y, Config.z)

        -- basically run once after character has loadded in  
        EnableResouresYMAPS() 
        EnableResouresINTERIORS(Config.x, Config.y, Config.z)

        interiorsActive = true
        unlockDoors()  
    end
end)

 