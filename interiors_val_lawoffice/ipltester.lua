-----------------------------------------------------
-- IPL Tester - 
-----------------------------------------------------
RegisterCommand("ipl_tester", function(source, args)    
    if args ~= nil then   
        local data =  source  
        TriggerEvent( "ipl_tester", args ) 
    end
end)

RegisterNetEvent('ipl_tester')
AddEventHandler('ipl_tester', function(args)   
    
    if args[1] ~= nil then 
        iplHash = GetHashKey(tostring(args[1])) 
    else 
        iplHash = 1186533019
    end 
    local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

    local interiorId = GetInteriorFromEntity(playerPed)    
    if interiorId ~= 0 then    
       x, y, z = GetInteriorPosition(interiorId)    
      print("current interior " .. interiorId .. " position is: " .. vec(x, y, z))    
    end        

    local interiorId --[[ Interior ]] =	GetInteriorAtCoords( coords.x --[[ number ]], coords.y --[[ number ]], coords.z --[[ number ]])
    if interiorId ~= 0 then  
        print("current interior " .. interiorId .. " position is: " .. vec(coords.x, coords.y, coords.z))    
    end 
    --  current interior 63746 position is: vec3(-291.113098, 778.730286, 127.181175)
    
    -- IsInteriorEntitySetActive     0x32810CA2125F5842        -- IS_INTERIOR_ENTITY_SET_ACTIVE
    -- local retval --[[ boolean ]], entitySetName --[[ const char ]] = IsInteriorEntitySetActive( interiorId --[[ Interior ]] )    
    local retval --[[ bool ]], entitySetName --[[ const char ]] = Citizen.InvokeNative(0x32810CA2125F5842, interiorId) -- IsInteriorEntitySetActive
    print("current interior " .. interiorId .. " IsInteriorEntitySetActive: " , retval, entitySetName)  
    
    -- IsInteriorEntitySetValid 0xD56FF170710FC826 -- _IS_INTERIOR_ENTITY_SET_VALID
    --local retval --[[ boolean ]], entitySetName --[[ const char ]] = IsInteriorEntitySetValid( interiorId --[[ Interior ]] )
    local retval --[[ bool ]], entitySetName --[[ const char ]] = Citizen.InvokeNative(0xD56FF170710FC826, interiorId) -- IsInteriorEntitySetValid    
    print("current interior " .. interiorId .. " IsInteriorEntitySetValid: " , retval, entitySetName)  

    -- IsInteriorReady 0x941560D2D45DBFC8 -- IS_INTERIOR_READY
    local retval --[[ boolean ]] =	IsInteriorReady( interiorId --[[ Interior ]] )
    print("current interior " .. interiorId .. " IsInteriorReady: " , retval)  
    
    -- IsInteriorScene     0x4200F14D6F840A9A -- IS_INTERIOR_SCENE
    local retval --[[ boolean ]] = IsInteriorScene()        
    print("current interior " .. interiorId .. " IsInteriorScene: " , retval)  
    
    -- IsValidInterior  0x017C1B3159F79F6C -- IS_VALID_INTERIOR
    local retval --[[ boolean ]] = IsValidInterior( interiorId --[[ Interior ]] )
    print("current interior " .. interiorId .. " IsValidInterior: " , retval) 
    
    -- SetInteriorInUse  0xB5EF6FEF2DC9EBED -- SET_INTERIOR_IN_USE
    --local retval --[[ boolean ]] =   SetInteriorInUse( interiorId --[[ Interior ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0xB5EF6FEF2DC9EBED, interiorId) -- SetInteriorInUse        
    print("current interior " .. interiorId .. " SetInteriorInUse: " , retval) 
    
    local p2 = -1    
    local entitySetName --[[ const char ]] =	ActivateInteriorEntitySet(		interiorId --[[ Interior ]]	)
    --local entitySetName --[[ const char ]] =	ActivateInteriorEntitySet(		interiorId --[[ Interior ]], 		p2 --[[ integer ]]	)
    
    -- IsInteriorEntitySetActive     0x32810CA2125F5842        -- IS_INTERIOR_ENTITY_SET_ACTIVE
    -- local retval --[[ boolean ]], entitySetName --[[ const char ]] = IsInteriorEntitySetActive( interiorId --[[ Interior ]] )    
    local retval --[[ bool ]], entitySetName --[[ const char ]] = Citizen.InvokeNative(0x32810CA2125F5842, interiorId) -- IsInteriorEntitySetActive
    print("current interior " .. interiorId .. " IsInteriorEntitySetActive: " , retval, entitySetName)  
     
    -- IsIplActiveByHash  0x93AC1B91CB6D9913     -- IS_IPL_ACTIVE_BY_HASH
    --local retval --[[ boolean ]] = IsIplActiveByHash( iplHash --[[ Hash ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0x93AC1B91CB6D9913, iplHash) -- IsIplActiveByHash   
    print("current ipl " .. iplHash .. " IsIplActiveByHash: " , retval)  
    --     Old name: _IS_IMAP_ACTIVE_2

    -- IsIplActiveHash 0xD779B9B910BD3B7C  -- IS_IPL_ACTIVE_HASH
    --local retval --[[ boolean ]] = 	IsIplActiveHash( iplHash --[[ Hash ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0xD779B9B910BD3B7C, iplHash) -- IsIplActiveHash   
    print("current ipl " .. iplHash .. " IsIplActiveHash: " , retval)  
    -- Old name: _IS_IMAP_ACTIVE

    -- GetIplBoundingSphere 0x9C77964B0E07B633  -- _GET_IPL_BOUNDING_SPHERE
    --local retval --[[ boolean ]], position --[[ vector3 ]], radius --[[ number ]] = GetIplBoundingSphere( iplHash --[[ Hash ]]	)
    --local retval --[[ boolean ]], position --[[ vector3 ]], radius --[[ number ]] = Citizen.InvokeNative(0x9C77964B0E07B633, iplHash) -- GetIplBoundingSphere   
    --print("current ipl " .. iplHash .. " GetIplBoundingSphere: " , retval, position, radius)      
    -- Outputs IPL position and radius (previously wrongly named heading)
    -- https://github.com/femga/rdr3_discoveries/blob/master/imaps/imaps_with_coords_and_heading.lua

    -- IsPositionInsideIplStreamingExtents     0x73B40D97D7BAAD77     -- _IS_POSITION_INSIDE_IPL_STREAMING_EXTENTS
    --local retval --[[ boolean ]] = IsPositionInsideIplStreamingExtents( iplHash --[[ Hash ]], x --[[ number ]], y --[[ number ]], z --[[ number ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0x73B40D97D7BAAD77, iplHash, x --[[ number ]], y --[[ number ]], z --[[ number ]] ) -- IsPositionInsideIplStreamingExtents 
    print("current ipl " .. iplHash .. " IsPositionInsideIplStreamingExtents: ", retval )   

    -- RemoveIplByHash 0x431E3AB760629B34  -- REMOVE_IPL_BY_HASH
    --RemoveIplByHash( iplHash --[[ Hash ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0x431E3AB760629B34, iplHash) -- RemoveIplByHas   h
    print("current ipl " .. iplHash .. " RemoveIplByHash: ", retval )   

    -- RemoveIplHash 0x5A3E5CF7B4014B96 -- REMOVE_IPL_HASH
    --RemoveIplHash( iplHash --[[ Hash ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0x5A3E5CF7B4014B96, iplHash) -- RemoveIplHash   
    print("current ipl " .. iplHash .. " RemoveIplHash: " , retval )   

    -- RequestIplByHash  0x9E211A378F95C97C  -- REQUEST_IPL_BY_HASH
    --RequestIplByHash( iplHash --[[ Hash ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0x9E211A378F95C97C, iplHash) -- RequestIplByHash   
    print("current ipl " .. iplHash .. " RequestIplByHash: ", retval  )   

    -- RequestIplHash 0x59767C5A7A9AE6DA -- REQUEST_IPL_HASH
    --RequestIplHash( iplHash --[[ Hash ]] )
    local retval --[[ bool ]] = Citizen.InvokeNative(0x59767C5A7A9AE6DA, iplHash) -- RequestIplHash   
    print("current ipl " .. iplHash .. " RequestIplHash: " , retval )  

end) 