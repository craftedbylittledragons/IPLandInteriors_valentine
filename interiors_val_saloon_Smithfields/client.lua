---------- Manual definitions ---  
local interiorsActive = false
local character_selected = false 

----------- turn on the bar ------
function EnableResouresIMAP()  
     if Config.Construction == true then  
        RequestImap(1285430299) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet, General Store -- Crates Outside 
    end  
    if Config.Sign == true then
        RequestImap(-1158072415) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Sign in Front
    end 
    if Config.BoardedUP == true then
        RequestImap(199047531) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Boarded Windows
        RequestImap(1136898294) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Boarded Up??
    end 
    if Config.Closed == true then
        RequestImap(1385025009) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Closed Sign
        RequestImap(-776975047) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Front Doors locked
    end   
    if Config.Posts == true then
        RequestImap(192173299) -- New Hanover -- Valentine -- Smithfields Saloon, Mainstreet -- Support Beams and Signs
    end  
    if Config.Boxes == true then
        RequestImap(-1000738568) -- boxes between valentine general store and saloon
        RequestImap(-991619789) -- wooden box outside valentine saloon below food board
    end   
    if Config.Smoke == true then
        RequestImap(-799526632) -- Valentine Saloon chimney smoke
    end    
    if Config.Unknow == true then
        RequestImap(666617953) -- Something relating to valentine saloon
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
    --[[
        [21250] = {x=-309.31076049805,y=808.43572998047,z=117.9640045166,typeHashId=1937309385,typeHashName="val_saloon_int",rpf="val_saloon_int.rpf"},             
   --]]     
    ActivateInteriorEntitySet(interior, "int_saloon") 
    ActivateInteriorEntitySet(interior, "val_saloon_int") 
    ActivateInteriorEntitySet(interior, "val_saloon_int_bar")
 
    ActivateInteriorEntitySet(interior, "val_saloon_int_main") -- definitions 

    ActivateInteriorEntitySet(interior, "val_sal_starway")       
    ActivateInteriorEntitySet(interior, "val_sal_misc01")       

    ActivateInteriorEntitySet(interior, "val_sal_main_up_flb")    
    ActivateInteriorEntitySet(interior, "val_saloon_walls_2f")  

    ActivateInteriorEntitySet(interior, "val_sal_main_lower_fl_amv")  
    ActivateInteriorEntitySet(interior, "val_saloon_walls_1f_amv")      

    ActivateInteriorEntitySet(interior, "val_sal_main_shell")      
    ActivateInteriorEntitySet(interior, "val_saloon_int_shell")  
 
    ActivateInteriorEntitySet(interior, "val_sal_int_rm03_curtain")   
    --ActivateInteriorEntitySet(interior, "val_sal_int_decal08")      
    --ActivateInteriorEntitySet(interior, "val_sal_int_decal02")      
    --ActivateInteriorEntitySet(interior, "val_sal_int_decal01")       

    ActivateInteriorEntitySet(interior, "val_sal_ceiling_beams")     
    --ActivateInteriorEntitySet(interior, "val_sal_bloodybed")       
    --ActivateInteriorEntitySet(interior, "val_sal_barbmirror")   
    --ActivateInteriorEntitySet(interior, "val_sal_barber01")     

    --ActivateInteriorEntitySet(interior, "val_saloon_paint1f_06")      
    --ActivateInteriorEntitySet(interior, "val_saloon_paint1f_05")     
    --ActivateInteriorEntitySet(interior, "val_saloon_paint1f_04")      
    --ActivateInteriorEntitySet(interior, "val_saloon_paint1f_02")      
    --ActivateInteriorEntitySet(interior, "val_saloon_paint1f_01")    
    --ActivateInteriorEntitySet(interior, "val_saloon_paint2f_04")       
    --ActivateInteriorEntitySet(interior, "val_saloon_paint2f_01")  
    
    ActivateInteriorEntitySet(interior, "val_saloon_int_shadowproxy")  
     
    ActivateInteriorEntitySet(interior, "val_saloon_int_ref_a_amv")      
    ActivateInteriorEntitySet(interior, "val_saloon_int_ref_b")          
    ActivateInteriorEntitySet(interior, "val_saloon_int_ref_c")          

    ActivateInteriorEntitySet(interior, "val_saloon_int_mr_ref_pxy")       
    ActivateInteriorEntitySet(interior, "val_saloon_int_geo_amv")  
         
    ActivateInteriorEntitySet(interior, "val_saloon_column_02r")      
    ActivateInteriorEntitySet(interior, "val_saloon_column_02l")      
    ActivateInteriorEntitySet(interior, "val_saloon_column_01a")  
    
    ActivateInteriorEntitySet(interior, "val_salbedroom01")       
    ActivateInteriorEntitySet(interior, "room_upper_rearb")     

    if Config.Poker == 1 then 
        ActivateInteriorEntitySet(interior, "4_chair_poker_set") 
        DeactivateInteriorEntitySet(interior, "6_chair_poker_set") 
    elseif Config.Poker == 2 then   -- curtains down loads 
        ActivateInteriorEntitySet(interior, "6_chair_poker_set") 
        DeactivateInteriorEntitySet(interior, "4_chair_poker_set")  
    else  
        --- do nothing 
    end 

    if Config.Clothes == 1 then 
        ActivateInteriorEntitySet(interior, "val_saloon_johnclothes01")  -- boots laying side ways, coat on hanger. 
        DeactivateInteriorEntitySet(interior, "val_saloon_johnclothes02") 
    elseif Config.Clothes == 2 then   -- curtains down loads 
        ActivateInteriorEntitySet(interior, "val_saloon_johnclothes02")  -- boots upright, coat on hanger, hat on chair. 
        DeactivateInteriorEntitySet(interior, "val_saloon_johnclothes01") 
    else 
        --- do nothing 
    end 

    if Config.Bed == true then 
        ActivateInteriorEntitySet(interior, "val_saloon_br03_bed")       
    end 

    if Config.Bloody == true then 
        ActivateInteriorEntitySet(interior, "val_saloon_br03_bloody")   
    end      

    if Config.Windows == true then 
        ActivateInteriorEntitySet(interior, "front_windows") 
    end    
         
end

-- currently there are two hitching posts. 

----------- turn off the bar ------
function DisableResourcesIMAPS()    
    RemoveImap(-1158072415) -- New Hanover -- Valentine -- Saloon Mainstreet -- Sign in Front
    RemoveImap(199047531) -- New Hanover -- Valentine -- Saloon Mainstreet -- Boarded Windows
    RemoveImap(1385025009) -- New Hanover -- Valentine -- Saloon Mainstreet -- Closed Sign
    RemoveImap(-776975047) -- New Hanover -- Valentine -- Saloon Mainstreet -- Front Doors locked
    RemoveImap(1136898294) -- New Hanover -- Valentine -- Saloon Mainstreet -- Boarded Up??
    RemoveImap(192173299) -- New Hanover -- Valentine -- Saloon Mainstreet -- Support Beams and Signs
    RemoveImap(897455211) -- New Hanover -- Valentine -- Saloon Mainstreet, General Store -- Something Regarding It
    RemoveImap(1285430299) -- New Hanover -- Valentine -- Saloon Mainstreet, General Store -- Crates Outside      
    RequestImap(-1000738568) -- boxes between valentine general store and saloon
    RequestImap(-991619789) -- wooden box outside valentine saloon below food board 
    RemoveImap(-799526632) -- Valentine Saloon chimney smoke
    RemoveImap(666617953) -- Something relating to valentine saloon 
    for key,row in pairs(ymap) do
        print (row.filename, row.name, row.hash, row.trigger, row.description)     
        RemoveImap(row.hash)    
    end    
end

function DisableResourcesINTERIORS(x, y, z)  
    local interior = GetInteriorAtCoords(x, y, z)   

    DeactivateInteriorEntitySet(interior, "val_saloon_int")   
    DeactivateInteriorEntitySet(interior, "4_chair_poker_set")  
    DeactivateInteriorEntitySet(interior, "6_chair_poker_set")    
    DeactivateInteriorEntitySet(interior, "val_saloon_johnclothes01")   
    DeactivateInteriorEntitySet(interior, "val_saloon_johnclothes02")   
    DeactivateInteriorEntitySet(interior, "val_saloon_br03_bed")   
    DeactivateInteriorEntitySet(interior, "val_saloon_br03_bloody")  
    DeactivateInteriorEntitySet(interior, "front_windows")       

    DeactivateInteriorEntitySet(interior, "val_sal_starway")       
    DeactivateInteriorEntitySet(interior, "val_sal_misc01")       
    DeactivateInteriorEntitySet(interior, "val_sal_main_up_flb")      
    DeactivateInteriorEntitySet(interior, "val_sal_main_shell")       
    DeactivateInteriorEntitySet(interior, "val_sal_main_lower_fl_amv")      
    DeactivateInteriorEntitySet(interior, "val_sal_int_rm03_curtain")       
    DeactivateInteriorEntitySet(interior, "val_sal_int_decal08")      
    DeactivateInteriorEntitySet(interior, "val_sal_int_decal02")  
    DeactivateInteriorEntitySet(interior, "val_sal_int_decal01")       
    DeactivateInteriorEntitySet(interior, "val_sal_ceiling_beams") 
    DeactivateInteriorEntitySet(interior, "val_sal_bloodybed")       
    DeactivateInteriorEntitySet(interior, "val_sal_barbmirror")  
    DeactivateInteriorEntitySet(interior, "val_sal_barber01")   

    DeactivateInteriorEntitySet(interior, "val_saloon_walls_1f_amv")      
    DeactivateInteriorEntitySet(interior, "val_saloon_paint1f_06")      
    DeactivateInteriorEntitySet(interior, "val_saloon_paint1f_05")     
    DeactivateInteriorEntitySet(interior, "val_saloon_paint1f_04")  
    DeactivateInteriorEntitySet(interior, "val_saloon_paint1f_02")   
    DeactivateInteriorEntitySet(interior, "val_saloon_paint1f_01")  
    DeactivateInteriorEntitySet(interior, "val_saloon_walls_2f")  
    DeactivateInteriorEntitySet(interior, "val_saloon_paint2f_04")   
    DeactivateInteriorEntitySet(interior, "val_saloon_paint2f_01")   
    DeactivateInteriorEntitySet(interior, "val_saloon_int_txd")       
    DeactivateInteriorEntitySet(interior, "val_saloon_int_shell")     
    DeactivateInteriorEntitySet(interior, "val_saloon_int_shadowproxy")      
    DeactivateInteriorEntitySet(interior, "val_saloon_int_ref_c")      
    DeactivateInteriorEntitySet(interior, "val_saloon_int_ref_b")      
    DeactivateInteriorEntitySet(interior, "val_saloon_int_ref_a_amv")      
    DeactivateInteriorEntitySet(interior, "val_saloon_int_mr_ref_pxy")  
    DeactivateInteriorEntitySet(interior, "val_saloon_int_geo_amv")      
    DeactivateInteriorEntitySet(interior, "val_saloon_int_bar")     
    DeactivateInteriorEntitySet(interior, "val_saloon_int")      
    DeactivateInteriorEntitySet(interior, "val_saloon_column_02r")      
    DeactivateInteriorEntitySet(interior, "val_saloon_column_02l")  
    DeactivateInteriorEntitySet(interior, "val_saloon_column_01a")  
    DeactivateInteriorEntitySet(interior, "val_salbedroom01")       
    DeactivateInteriorEntitySet(interior, "room_upper_rearb")       

    --DeactivateInteriorEntitySet(interior, 0x6297A6AC)      
    --DeactivateInteriorEntitySet(interior, 0x47C5E066)       

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

 