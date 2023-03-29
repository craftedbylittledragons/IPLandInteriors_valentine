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